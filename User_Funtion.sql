CREATE
    [DEFINER = user]
    PROCEDURE call_patients ([patient_name, patient_phone_number],[receptionist])


proc_parameter:
    [ OUT  ] param_name type

func_parameter:
    param_name type

type:
    Any valid MySQL data type

characteristic: {
    COMMENT 'phone_number'
  | LANGUAGE SQL
  | [NOT] DETERMINISTIC
  | { CONTAINS SQL  }
  | SQL SECURITY { DEFINER  }
}

routine_body:
    Valid SQL routine statement