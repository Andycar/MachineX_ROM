.class public Lcom/samsung/appdisabler/XmlItemHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "XmlItemHandler.java"


# static fields
.field protected static final ADD_SHORTCUT_TO_HOMESCREEN:Ljava/lang/String; = "add_shortcut_to_homescreen"

.field protected static final APPLICATION_ITEM:Ljava/lang/String; = "application"

.field protected static final APPLICATION_ITEMS_GROUP:Ljava/lang/String; = "applications"

.field protected static final CODE:Ljava/lang/String; = "code"

.field protected static final FORCE_APPLICATION_TURN_OFF:Ljava/lang/String; = "force_application_turn_off"

.field protected static final HIDE_AFTER_TIMEOUT:Ljava/lang/String; = "hide_after_timeout"

.field protected static final IMSI_ITEM:Ljava/lang/String; = "item"

.field protected static final IMSI_ITEMS_GROUP:Ljava/lang/String; = "imsis"

.field protected static final IMSI_NUMERIC_BASE:Ljava/lang/String; = "imsi_numeric_base"

.field private static final IMSI_PART:[Ljava/lang/String;

.field protected static final IMSI_RANGE_END:Ljava/lang/String; = "imsi_range_end"

.field protected static final IMSI_RANGE_START:Ljava/lang/String; = "imsi_range_start"

.field protected static final NETWORK_NUMERIC:Ljava/lang/String; = "network_numeric"

.field protected static final PACKAGE_TO_HIDE:Ljava/lang/String; = "package_to_hide"

.field protected static final SIM_NUMERIC:Ljava/lang/String; = "sim_numeric"

.field protected static final SIM_SPN:Ljava/lang/String; = "sim_spn"

.field protected static final TIMEOUT_IN_SECONDS:Ljava/lang/String; = "timeout_in_seconds"


# instance fields
.field private currentElement:Ljava/lang/Boolean;

.field private currentValue:Ljava/lang/String;

.field private errorsFromAllItems:Ljava/lang/StringBuilder;

.field private imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

.field private item:Lcom/samsung/appdisabler/ImsiItem;

.field private itemsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation
.end field

.field private locator:Lorg/xml/sax/Locator;

.field private parsingFaild:Z

.field private readingImsiNumeric:Z

.field private timeoutInSeconds:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 37
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "imsi_numeric_base"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "imsi_range_start"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "imsi_range_end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/appdisabler/XmlItemHandler;->IMSI_PART:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 40
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    .line 43
    new-instance v0, Lcom/samsung/appdisabler/ImsiItem;

    invoke-direct {v0}, Lcom/samsung/appdisabler/ImsiItem;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    .line 46
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->timeoutInSeconds:I

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    .line 52
    iput-boolean v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    .line 59
    iput-boolean v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    return-void
.end method

.method private appendHeaderToErrorMsg()V
    .registers 2

    .prologue
    .line 279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    .line 280
    return-void
.end method

.method private getLineInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 250
    iget-object v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_7

    .line 252
    const-string v0, ""

    .line 256
    :goto_6
    return-object v0

    .line 254
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Check line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "lineInfo":Ljava/lang/String;
    goto :goto_6
.end method

.method private getLocationInfo()Ljava/lang/String;
    .registers 4

    .prologue
    .line 234
    iget-object v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_7

    .line 236
    const-string v0, ""

    .line 240
    :goto_6
    return-object v0

    .line 238
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " column: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v2}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "info":Ljava/lang/String;
    goto :goto_6
.end method


# virtual methods
.method public appendParserError(Ljava/lang/String;)V
    .registers 3
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    if-nez v0, :cond_7

    .line 292
    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->appendHeaderToErrorMsg()V

    .line 294
    :cond_7
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    return-void
.end method

.method public characters([CII)V
    .registers 6
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    .line 211
    :cond_22
    return-void
.end method

.method public endDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 215
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_10

    .line 216
    const-string v0, "There where no elements in xml file!"

    invoke-virtual {p0, v0}, Lcom/samsung/appdisabler/XmlItemHandler;->appendParserError(Ljava/lang/String;)V

    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    .line 219
    :cond_10
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    .line 119
    const-string/jumbo v3, "timeout_in_seconds"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    .line 121
    :try_start_10
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->timeoutInSeconds:I
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_18} :catch_19

    .line 202
    :cond_18
    :goto_18
    return-void

    .line 122
    :catch_19
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "is not valid number in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "timeout_in_seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong format of timeout_in_seconds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Default value (5 minutes) will be use."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto :goto_18

    .line 126
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_62
    const-string/jumbo v3, "package_to_hide"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    .line 127
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setPackageToHide(Ljava/lang/String;)V

    goto :goto_18

    .line 128
    :cond_73
    const-string/jumbo v3, "sim_numeric"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    .line 129
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setSimNumeric(Ljava/lang/String;)V

    goto :goto_18

    .line 130
    :cond_84
    const-string v3, "imsi_numeric_base"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    .line 131
    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_ae

    .line 132
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_numeric_base must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 135
    :cond_ae
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiNumericBase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 136
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_numeric_base can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 138
    :cond_d6
    const-string v3, "imsi_range_start"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_128

    .line 139
    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_100

    .line 140
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_start must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 143
    :cond_100
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiRangeStart(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 144
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_start can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 146
    :cond_128
    const-string v3, "imsi_range_end"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17a

    .line 147
    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-nez v3, :cond_152

    .line 148
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_end must be inside item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 151
    :cond_152
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiNumeric;->setImsiRangeEnd(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 152
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "imsi_range_end can be used only once in item"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 154
    :cond_17a
    const-string v3, "item"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b3

    .line 155
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-virtual {v3}, Lcom/samsung/appdisabler/ImsiNumeric;->validate()Z

    move-result v3

    if-eqz v3, :cond_195

    .line 156
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setImsiNumericBase(Lcom/samsung/appdisabler/ImsiNumeric;)V

    .line 157
    iput-boolean v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    goto/16 :goto_18

    .line 159
    :cond_195
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item must have imsi_numeric_base and imsi_range_start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 161
    :cond_1b3
    const-string/jumbo v3, "sim_spn"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c5

    .line 162
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setSimSpn(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 163
    :cond_1c5
    const-string v3, "network_numeric"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d6

    .line 164
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setNetworkNumeric(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 165
    :cond_1d6
    const-string v3, "add_shortcut_to_homescreen"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e7

    .line 166
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setAddShortcutToScreen(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 167
    :cond_1e7
    const-string v3, "hide_after_timeout"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f8

    .line 168
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setHideAfterTimeout(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 169
    :cond_1f8
    const-string v3, "force_application_turn_off"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_209

    .line 170
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/samsung/appdisabler/ImsiItem;->setForceApplicationTurnOff(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 171
    :cond_209
    const-string v3, "application"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_284

    .line 172
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v3}, Lcom/samsung/appdisabler/ImsiItem;->validate()Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, "validationErrors":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_27b

    .line 177
    iget-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    if-nez v3, :cond_22b

    .line 179
    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->appendHeaderToErrorMsg()V

    .line 182
    :cond_22b
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    .line 183
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---------Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from xml file have errors:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n---------Item "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "--------\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_27b
    new-instance v3, Lcom/samsung/appdisabler/ImsiItem;

    invoke-direct {v3}, Lcom/samsung/appdisabler/ImsiItem;-><init>()V

    iput-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    goto/16 :goto_18

    .line 190
    .end local v2    # "validationErrors":Ljava/lang/String;
    :cond_284
    const-string v3, "applications"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "imsis"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string v3, "item"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 193
    const-string v3, "code"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b5

    .line 194
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "errors":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18

    .line 196
    invoke-static {v1}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 199
    .end local v1    # "errors":Ljava/lang/String;
    :cond_2b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse XML: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 200
    iget-object v3, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported end TAG: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_18
.end method

.method public getImsiList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/appdisabler/ImsiItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 69
    const-string v0, "XML getItemsList empty"

    invoke-static {v0}, Lcom/samsung/appdisabler/Utils;->LogW(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    .line 73
    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->itemsList:Ljava/util/ArrayList;

    goto :goto_e
.end method

.method public getTimeoutInSeconds()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->timeoutInSeconds:I

    return v0
.end method

.method public getValidationErrors()Ljava/lang/String;
    .registers 2

    .prologue
    .line 265
    iget-boolean v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->parsingFaild:Z

    if-eqz v0, :cond_b

    .line 267
    iget-object v0, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .registers 2
    .param p1, "locator"    # Lorg/xml/sax/Locator;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/samsung/appdisabler/XmlItemHandler;->locator:Lorg/xml/sax/Locator;

    .line 224
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 13
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 84
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentElement:Ljava/lang/Boolean;

    .line 85
    const-string v5, ""

    iput-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->currentValue:Ljava/lang/String;

    .line 86
    iget-boolean v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    if-eqz v5, :cond_4f

    .line 87
    sget-object v0, Lcom/samsung/appdisabler/XmlItemHandler;->IMSI_PART:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_13
    if-ge v2, v3, :cond_21

    aget-object v4, v0, v2

    .line 88
    .local v4, "tag":Ljava/lang/String;
    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 109
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "tag":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return-void

    .line 87
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "tag":Ljava/lang/String;
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 93
    .end local v4    # "tag":Ljava/lang/String;
    :cond_21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " can\'t be put inside of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLocationInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "errorMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    invoke-virtual {v5, v1}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    .line 95
    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->item:Lcom/samsung/appdisabler/ImsiItem;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Lcom/samsung/appdisabler/ImsiItem;->appendErrorMsg(Ljava/lang/String;)V

    goto :goto_1d

    .line 96
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_4f
    const-string v5, "item"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 97
    new-instance v5, Lcom/samsung/appdisabler/ImsiNumeric;

    invoke-direct {v5}, Lcom/samsung/appdisabler/ImsiNumeric;-><init>()V

    iput-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->imsiNumericBase:Lcom/samsung/appdisabler/ImsiNumeric;

    .line 98
    iput-boolean v6, p0, Lcom/samsung/appdisabler/XmlItemHandler;->readingImsiNumeric:Z

    goto :goto_1d

    .line 99
    :cond_61
    const-string/jumbo v5, "package_to_hide"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string/jumbo v5, "sim_numeric"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "imsi_numeric_base"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string/jumbo v5, "timeout_in_seconds"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "imsi_range_start"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "imsi_range_end"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string/jumbo v5, "sim_spn"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "network_numeric"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "add_shortcut_to_homescreen"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "hide_after_timeout"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "force_application_turn_off"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "application"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "code"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "applications"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    const-string v5, "imsis"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse XML: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/appdisabler/Utils;->LogE(Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/samsung/appdisabler/XmlItemHandler;->errorsFromAllItems:Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unsupported start TAG: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/samsung/appdisabler/XmlItemHandler;->getLineInfo()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d
.end method
