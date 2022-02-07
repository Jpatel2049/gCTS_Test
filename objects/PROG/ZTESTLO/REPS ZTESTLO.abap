*&---------------------------------------------------------------------*
*& Report ZTESTLO
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ZTESTLO.

*parameters*
PARAMETERS: pa_land type zbc400_s_kna1-land1.


DATA: itab TYPE zbc400_kna1_tab,
      s_tab TYPE zbc400_s_kna1.


CALL METHOD zbc400_class_lo=>get_country
  EXPORTING
    iv_country = pa_land
  IMPORTING
    ev_table   = itab
    .




loop at itab INTO s_tab.
  write: / s_tab-kunnr,
           s_tab-land1,
           s_tab-ekont.
endloop.