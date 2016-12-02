/**
 * \file
 * \brief Real Time Operating System (RTOS) main program.
 * \author Erich Styger, erich.styger@hslu.ch
 */

#include "Platform.h"
#if PL_CONFIG_HAS_RTOS
#include "RTOS.h"
#include "FRTOS1.h"
#include "LED.h"
#include "Event.h"
#include "Keys.h"
#include "Application.h"

static void AppTask(void* param) {
  const int *whichLED = (int*)param;

  (void)param; /* avoid compiler warning */
  for(;;) {
    if (*whichLED==1) {
      LED1_Neg();
    } else if (*whichLED==2) {
      LED2_Neg();
    }

    FRTOS1_vTaskDelay(pdMS_TO_TICKS(0));

  }
}

static void KeyTask(void* param) {
  (void)param; /* avoid compiler warning */

  for(;;) {
#if PL_CONFIG_HAS_KEYS
	#if PL_CONFIG_HAS_DEBOUNCE
		 KEYDBNC_Process();
	#else
		KEY_Scan();
	#endif
#endif
#if PL_CONFIG_HAS_EVENTS
    EVNT_HandleEvent(APP_EventHandler, TRUE);
#endif
    FRTOS1_vTaskDelay(pdMS_TO_TICKS(10));
  } /* FOR */
}

void RTOS_Init(void) {
  if (FRTOS1_xTaskCreate(KeyTask, (signed portCHAR *)"Keys", configMINIMAL_STACK_SIZE, NULL, tskIDLE_PRIORITY, NULL) != pdPASS) {
    for(;;){} /* error case only, stay here! */
  }
}

void RTOS_Deinit(void) {
  /* nothing needed for now */
}

#endif /* PL_CONFIG_HAS_RTOS */
