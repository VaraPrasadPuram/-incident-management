using ProcessorService as service from '../../srv/ services';
annotate service.Incidents with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'customer_ID',
                Value : customer_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'urgency_code',
                Value : urgency_code,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status_code',
                Value : status_code,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'customer_ID',
            Value : customer_ID,
        },
        {
            $Type : 'UI.DataField',
            Value : title,
        },
        {
            $Type : 'UI.DataField',
            Label : 'urgency_code',
            Value : urgency_code,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status_code',
            Value : status_code,
        },
    ],
);

annotate service.Incidents with {
    customer @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Customers',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : customer_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'firstName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'lastName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'name',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'email',
            },
        ],
    }
};

annotate service.Incidents with @(
    UI.SelectionFields : [
        urgency_code,
        status_code,
    ]
);
annotate service.Incidents with {
    urgency @Common.Label : '{i18n>Urgency}'
};
annotate service.Incidents with {
    status @Common.Label : '{i18n>Status}'
};
annotate service.Incidents with {
    urgency @Common.ValueListWithFixedValues : true
};
annotate service.Urgency with {
    code @Common.Text : {
        $value : descr,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
annotate service.Incidents with {
    status @Common.ValueListWithFixedValues : true
};
annotate service.Status with {
    code @Common.Text : {
        $value : descr,
        ![@UI.TextArrangement] : #TextOnly,
    }
};
annotate service.Incidents with {
    customer @Common.Text : {
            $value : customer.name,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Incidents with {
    status @Common.Text : {
            $value : status.descr,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Incidents with {
    urgency @Common.Text : {
            $value : urgency.descr,
            ![@UI.TextArrangement] : #TextOnly,
        }
};
annotate service.Incidents with @(
    UI.HeaderInfo : {
        Title : {
            $Type : 'UI.DataField',
            Value : title,
        },
        TypeName : '',
        TypeNamePlural : '',
        Description : {
            $Type : 'UI.DataField',
            Value : customer.name,
        },
        TypeImageUrl : 'sap-icon://alert',
    }
);
annotate service.Incidents with @(
    UI.FieldGroup #i18nDetails : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : status_code,
            },{
                $Type : 'UI.DataField',
                Value : urgency_code,
            },],
    }
);
annotate service.Incidents with {
    customer @Common.ValueListWithFixedValues : false
};
annotate service.Incidents.conversation with @(
    UI.LineItem #i18nConversation : [
        {
            $Type : 'UI.DataField',
            Value : author,
            Label : '{i18n>Author}',
        },{
            $Type : 'UI.DataField',
            Value : message,
            Label : '{i18n>Message}',
        },{
            $Type : 'UI.DataField',
            Value : timestamp,
            Label : '{i18n>Date}',
        },]
);
annotate service.Incidents with @(
    UI.FieldGroup #i18nGeneralInformation : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    }
);

annotate service.Incidents with @Common.SemanticKey: [ID]{
    ID @Core.Computed
};