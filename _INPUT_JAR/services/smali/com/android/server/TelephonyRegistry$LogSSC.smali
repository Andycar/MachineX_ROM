.class Lcom/android/server/TelephonyRegistry$LogSSC;
.super Ljava/lang/Object;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LogSSC"
.end annotation


# instance fields
.field private mPhoneId:I

.field private mS:Ljava/lang/String;

.field private mState:Landroid/telephony/ServiceState;

.field private mSubId:J

.field private mTime:Landroid/text/format/Time;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 1540
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TelephonyRegistry$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/TelephonyRegistry$1;

    .prologue
    .line 1540
    invoke-direct {p0}, Lcom/android/server/TelephonyRegistry$LogSSC;-><init>()V

    return-void
.end method


# virtual methods
.method public set(Landroid/text/format/Time;Ljava/lang/String;JILandroid/telephony/ServiceState;)V
    .registers 8
    .param p1, "t"    # Landroid/text/format/Time;
    .param p2, "s"    # Ljava/lang/String;
    .param p3, "subId"    # J
    .param p5, "phoneId"    # I
    .param p6, "state"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1548
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mTime:Landroid/text/format/Time;

    iput-object p2, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mS:Ljava/lang/String;

    iput-wide p3, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mSubId:J

    iput p5, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mPhoneId:I

    iput-object p6, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mState:Landroid/telephony/ServiceState;

    .line 1549
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mTime:Landroid/text/format/Time;

    invoke-virtual {v1}, Landroid/text/format/Time;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mSubId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/TelephonyRegistry$LogSSC;->mState:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
