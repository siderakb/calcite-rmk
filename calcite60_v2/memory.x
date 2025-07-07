MEMORY
{
  /* NOTE 1 K = 1 KiB = 1024 bytes */
  /* These values correspond to the nRF52840 WITH Adafruit nRF52 bootloader */

  /* SoftDevice S140 6.1.1 */
  FLASH : ORIGIN = 0x00026000, LENGTH = 824K
  RAM : ORIGIN = 0x20020000, LENGTH = 128K

  /* SoftDevice S140 7.3.0 */
  /* FLASH : ORIGIN = 0x00027000, LENGTH = 820K */
  /* RAM : ORIGIN = 0x20020000, LENGTH = 128K */
}
