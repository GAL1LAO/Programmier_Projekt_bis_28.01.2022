*&---------------------------------------------------------------------*
*& Report z02_fedral_amt
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT z02_fedral_amt.

** Abflüge:from
PARAMETERS CounFro TYPE land1.
PARAMETERS CityFro TYPE s_from_cit.
PARAMETERS AirpFro TYPE s_fromairp.

** Landungen
PARAMETERS CouTo TYPE land1.
PARAMETERS CityTo TYPE s_to_city.
PARAMETERS AirpTo TYPE s_toairp.

*DATA CounFroD TYPE TABLE OF spfli.
**DATA CityFroD TYPE TABLE OF spfli.
**DATA AirpFroD TYPE TABLE OF spfli.
**DATA CouToD TYPE TABLE OF spfli.
**DATA CityToD TYPE TABLE OF spfli.
**DATA AirpToD TYPE TABLE OF spfli.


SELECT * FROM z02_fedraloffice

 WHERE Z02_fedraloffice~CountryFrom = @CounFro
 or Z02_fedraloffice~Cityfrom = @cityfro
 or Z02_fedraloffice~Airportfrom = @airpfro
 or Z02_fedraloffice~CountryTo = @couto
 or Z02_fedraloffice~CityTo = @cityto
 or Z02_fedraloffice~AirportTo = @airpto
**GROUP BY CountryFrom
 into table @data(total_Table).

 cl_demo_output=>display_data( total_table ).

 data: Total_amount type i.
 total_amount = lines( total_table ).

 cl_demo_output=>display_data( total_amount ).
