#include "xmlvm.h"
#include "java_lang_Object.h"
#include "java_lang_String.h"

#include "org_xmlvm_iphone_NSLog.h"

__TIB_DEFINITION_org_xmlvm_iphone_NSLog __TIB_org_xmlvm_iphone_NSLog = {
    0, // classInitialized
    __INIT_org_xmlvm_iphone_NSLog, // classInitializer
    "org.xmlvm.iphone.NSLog", // className
    (__TIB_DEFINITION_TEMPLATE*) &__TIB_org_xmlvm_iphone_NSObject, // extends
    XMLVM_TYPE_CLASS};

JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLog;
JAVA_OBJECT __CLASS_org_xmlvm_iphone_NSLog_ARRAYTYPE;

//XMLVM_BEGIN_IMPLEMENTATION
//XMLVM_END_IMPLEMENTATION


#include "xmlvm-reflection.h"

static XMLVM_FIELD_REFLECTION_DATA __field_reflection_data[] = {
};

static XMLVM_CONSTRUCTOR_REFLECTION_DATA __constructor_reflection_data[] = {
};

static JAVA_OBJECT constructor_dispatcher(JAVA_OBJECT constructor, JAVA_OBJECT arguments)
{
    JAVA_OBJECT obj = __NEW_org_xmlvm_iphone_NSLog();
    java_lang_reflect_Constructor* c = (java_lang_reflect_Constructor*) constructor;
    org_xmlvm_runtime_XMLVMArray* args = (org_xmlvm_runtime_XMLVMArray*) arguments;
    JAVA_ARRAY_OBJECT* argsArray = (JAVA_ARRAY_OBJECT*) args->fields.org_xmlvm_runtime_XMLVMArray.array_;
    switch (c->fields.java_lang_reflect_Constructor.slot_) {
    default:
        XMLVM_INTERNAL_ERROR();
        break;
    }
    return obj;
}

void __INIT_org_xmlvm_iphone_NSLog()
{
    __TIB_org_xmlvm_iphone_NSLog.classInitialized = 1;
    // Initialize base class if necessary
    if (!__TIB_org_xmlvm_iphone_NSObject.classInitialized) __INIT_org_xmlvm_iphone_NSObject();
    __TIB_org_xmlvm_iphone_NSLog.newInstanceFunc = __NEW_INSTANCE_org_xmlvm_iphone_NSLog;
    // Copy vtable from base class
    XMLVM_MEMCPY(__TIB_org_xmlvm_iphone_NSLog.vtable, __TIB_org_xmlvm_iphone_NSObject.vtable, sizeof(__TIB_org_xmlvm_iphone_NSObject.vtable));
    // Initialize vtable for this class
    // Initialize vtable for implementing interfaces
    __TIB_org_xmlvm_iphone_NSLog.numImplementedInterfaces = 0;
    __TIB_org_xmlvm_iphone_NSLog.implementedInterfaces = (__TIB_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__TIB_DEFINITION_TEMPLATE*) * 0);

    __TIB_org_xmlvm_iphone_NSLog.declaredFields = &__field_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLog.numDeclaredFields = sizeof(__field_reflection_data) / sizeof(XMLVM_FIELD_REFLECTION_DATA);
    __TIB_org_xmlvm_iphone_NSLog.constructorDispatcherFunc = constructor_dispatcher;
    __TIB_org_xmlvm_iphone_NSLog.declaredConstructors = &__constructor_reflection_data[0];
    __TIB_org_xmlvm_iphone_NSLog.numDeclaredConstructors = sizeof(__constructor_reflection_data) / sizeof(XMLVM_CONSTRUCTOR_REFLECTION_DATA);
    __CLASS_org_xmlvm_iphone_NSLog = XMLVM_CREATE_CLASS_OBJECT(&__TIB_org_xmlvm_iphone_NSLog);
    __TIB_org_xmlvm_iphone_NSLog.clazz = __CLASS_org_xmlvm_iphone_NSLog;
    __CLASS_org_xmlvm_iphone_NSLog_ARRAYTYPE = XMLVM_CREATE_ARRAY_CLASS_OBJECT(__CLASS_org_xmlvm_iphone_NSLog, 1);

    //XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_iphone_NSLog]
    //XMLVM_END_WRAPPER
}

void __DELETE_org_xmlvm_iphone_NSLog(void* me, void* client_data)
{
    //XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_iphone_NSLog]
    //XMLVM_END_WRAPPER
}

JAVA_OBJECT __NEW_org_xmlvm_iphone_NSLog()
{
    if (!__TIB_org_xmlvm_iphone_NSLog.classInitialized) __INIT_org_xmlvm_iphone_NSLog();
    org_xmlvm_iphone_NSLog* me = (org_xmlvm_iphone_NSLog*) XMLVM_MALLOC(sizeof(org_xmlvm_iphone_NSLog));
    me->tib = &__TIB_org_xmlvm_iphone_NSLog;
    //XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_iphone_NSLog]
    //XMLVM_END_WRAPPER
    return me;
}

JAVA_OBJECT __NEW_INSTANCE_org_xmlvm_iphone_NSLog()
{
    JAVA_OBJECT me = JAVA_NULL;
    return me;
}

void org_xmlvm_iphone_NSLog_log___java_lang_String(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSLog.classInitialized) __INIT_org_xmlvm_iphone_NSLog();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLog_log___java_lang_String]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

void org_xmlvm_iphone_NSLog_log___java_lang_Object(JAVA_OBJECT n1)
{
    if (!__TIB_org_xmlvm_iphone_NSLog.classInitialized) __INIT_org_xmlvm_iphone_NSLog();
    //XMLVM_BEGIN_WRAPPER[org_xmlvm_iphone_NSLog_log___java_lang_Object]
    XMLVM_NOT_IMPLEMENTED();
    //XMLVM_END_WRAPPER
}

