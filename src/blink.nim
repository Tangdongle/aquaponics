{.compile: "led.c".}
proc led_setup(): void {.importc.}
proc led_on(): void {.importc.}
proc led_off(): void {.importc.}
proc delay(ms: int): void {.importc.}

when isMainModule:
  led_setup();
  while true:
    led_on()
    delay(500)
    led_off()
    delay(500)
