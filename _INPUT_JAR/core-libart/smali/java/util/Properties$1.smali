.class Ljava/util/Properties$1;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Properties;->loadFromXML(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Properties;


# direct methods
.method constructor <init>(Ljava/util/Properties;)V
    .registers 2

    .prologue
    .line 596
    iput-object p1, p0, Ljava/util/Properties$1;->this$0:Ljava/util/Properties;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 602
    throw p1
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 606
    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .registers 2
    .param p1, "e"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 598
    throw p1
.end method
