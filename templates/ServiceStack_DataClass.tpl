<CODEGEN_FILENAME><StructureName>.dbl</CODEGEN_FILENAME>
<PROCESS_TEMPLATE>ServiceStack_DataWrapper</PROCESS_TEMPLATE>
;;******************************************************************************
;; WARNING: THIS FILE WAS CODE GENERATED. CHANGES MAY BE LOST IF REGENERATED
;;******************************************************************************

import System
import System.Runtime.Serialization

namespace <NAMESPACE>

    {DataContract}
    {Serializable}
    public cls class <StructureName>

        {IgnoreDataMember}
        private wrapper, @<StructureName>Wrapper

        ;;; <summary>
        ;;; Construct an empty <StructureName> object
        ;;; </summary>
        public method <StructureName>
            endparams
        proc
            wrapper = new <StructureName>Wrapper()
        endmethod

        ;;; <summary>
        ;;; Construct a <StructureName> object containing the data from a <STRUCTURE_NOALIAS> record
        ;;; </summary>
        ;;; <param name="a<StructureName>">Passed <StructureName> record</param>
        public method <StructureName>
            required in a<StructureName>, String
            endparams
        proc
            ;;Save the record
            wrapper = new <StructureName>Wrapper()
            wrapper.Record = a<StructureName>
        endmethod

        public property Record, String
            method get
            proc
                mreturn wrapper.Record
            endmethod
        endproperty

        ;;Expose the fields in the Synergy record as properties, using .NET types

        <FIELD_LOOP>
        ;;; <summary>
        ;;; <FIELD_DESC>
        ;;; </summary>
        {DataMember}
        public property <FieldNetName>, <FIELD_SNTYPE>
            method get
            proc
                mreturn wrapper.<FieldNetName>
            endmethod
            method set
            proc
                wrapper.<FieldNetName> = value
            endmethod
        endproperty

        </FIELD_LOOP>

    endclass

endnamespace
