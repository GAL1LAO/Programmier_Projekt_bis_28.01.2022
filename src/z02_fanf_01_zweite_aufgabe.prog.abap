*&---------------------------------------------------------------------*
*& Report z02_fanf_01_zweite_aufgabe
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_fanf_01_zweite_aufgabe.

PARAMETERS ConnNum TYPE s_conn_id.

data customer_data type table of s_date.

SELECT fldate from sflight
**FIELDS *
WHERE connid = @ConnNum
INTO TABLE @customer_data.

If sy-subrc <> 0.
Endif.

cl_demo_output=>display( customer_data ).
