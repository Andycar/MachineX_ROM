.class public Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;
.super Ljava/lang/Object;
.source "HermesServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hermes/HermesServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HermesEvent"
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private endTime:J

.field private location:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/samsung/android/hermes/HermesServiceManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hermes/HermesServiceManager;JJLjava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "location"    # Ljava/lang/String;
    .param p7, "description"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 1007
    iput-object p1, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->this$0:Lcom/samsung/android/hermes/HermesServiceManager;

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 998
    iput-wide v2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    .line 1000
    iput-wide v2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    .line 1002
    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    .line 1004
    iput-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    .line 1009
    iput-wide p2, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    .line 1010
    iput-wide p4, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    .line 1011
    iput-object p6, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    .line 1012
    iput-object p7, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    .line 1013
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()J
    .registers 3

    .prologue
    .line 1030
    iget-wide v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->endTime:J

    return-wide v0
.end method

.method public getLocation()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->location:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 1021
    iget-wide v0, p0, Lcom/samsung/android/hermes/HermesServiceManager$HermesEvent;->startTime:J

    return-wide v0
.end method
