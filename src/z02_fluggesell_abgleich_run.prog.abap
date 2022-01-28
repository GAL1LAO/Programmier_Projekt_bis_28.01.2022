*&---------------------------------------------------------------------*
*& Report z02_fluggesell_abgleich_run
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_fluggesell_abgleich_run.


PARAMETERS CarrID type s_carr_id.
PARAMETERS FliDate type s_date.



** Beide Felder sollen ausgeüllt werden
SELECT * FROM z02_fluggesellschaft_abgleich
where z02_fluggesellschaft_abgleich~CarrierId = @carrid
and z02_fluggesellschaft_abgleich~FlightDate = @flidate
into table @DATA(Table).

 cl_demo_output=>display_data( table ).
