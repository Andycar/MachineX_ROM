.class Lcom/android/server/am/AMSLogger$AMSFormatter;
.super Ljava/util/logging/Formatter;
.source "AMSLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AMSLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AMSFormatter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AMSLogger;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AMSLogger;)V
    .registers 2

    .prologue
    .line 309
    iput-object p1, p0, Lcom/android/server/am/AMSLogger$AMSFormatter;->this$0:Lcom/android/server/am/AMSLogger;

    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AMSLogger;Lcom/android/server/am/AMSLogger$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/AMSLogger;
    .param p2, "x1"    # Lcom/android/server/am/AMSLogger$1;

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/android/server/am/AMSLogger$AMSFormatter;-><init>(Lcom/android/server/am/AMSLogger;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 4
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
