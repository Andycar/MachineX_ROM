.class public Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
.super Ljava/lang/Thread;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;,
        Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;
    }
.end annotation


# static fields
.field private static final PASSIVE_LOC_COLL_FREQ:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "LppFusion"

.field static final vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;


# instance fields
.field LogFromAPDR:Ljava/lang/String;

.field LogFromLocM:Ljava/lang/String;

.field private apdrStepNumber:J

.field flagGPSAlwaysOn:Z

.field private final locReqType:J

.field private locRequestInterval:J

.field private final lppQ:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;",
            ">;"
        }
    .end annotation
.end field

.field private final mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

.field private final mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

.field private final mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

.field private final mListGPSPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private final mListLPPPos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

.field private final mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

.field private final mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

.field private final mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

.field private mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

.field strAlgo:Ljava/lang/String;

.field strLM:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    invoke-static {}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->values()[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V
    .registers 8
    .param p1, "config"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 23
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    .line 24
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    .line 25
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    .line 30
    iput-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .line 33
    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    .line 36
    const-string v0, "\n<<LPosition>>\n\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strAlgo:Ljava/lang/String;

    .line 37
    const-string v0, "\n<<LoManager>>\n\n"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->strLM:Ljava/lang/String;

    .line 40
    const-string v0, "0   0   0   0   0   0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LogFromAPDR:Ljava/lang/String;

    .line 41
    const-string v0, "0   0   0   0"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->LogFromLocM:Ljava/lang/String;

    .line 45
    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locReqType:J

    .line 46
    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    .line 47
    const-wide/16 v0, 0x2d

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    .line 67
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    .line 632
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    .line 724
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    .line 135
    const-string v0, "LppFusion"

    const-string v1, "LppFusion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLPPAloLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppAlgoLnr;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V

    .line 145
    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_APDR:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    .line 146
    iget v0, p1, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;->GPSRequest_Timer:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    .line 148
    iget-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->locRequestInterval:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_8d

    .line 149
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    .line 154
    :goto_85
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    .line 155
    return-void

    .line 151
    :cond_8d
    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->flagGPSAlwaysOn:Z

    goto :goto_85
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mCfg:Lcom/samsung/android/contextaware/aggregator/lpp/LppConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/concurrent/BlockingQueue;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLMLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LocManListener;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->updateLppFusionStatus(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListLPPPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListGPSPos:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V
    .registers 3
    .param p1, "msgid"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    .prologue
    .line 585
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 586
    return-void
.end method

.method private addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V
    .registers 7
    .param p1, "msgid"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 593
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    invoke-direct {v2, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 597
    .local v0, "res":Z
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-ne p1, v1, :cond_51

    if-eqz p2, :cond_51

    .line 598
    const-string v1, "LppFusion"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addQ, array size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " res:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_51
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_SLEEP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    if-eq p1, v1, :cond_60

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TIMED_WAITING:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_60

    .line 607
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->interrupt()V

    .line 609
    :cond_60
    return-void
.end method

.method private apdrlogData(CLjava/lang/String;)V
    .registers 4
    .param p1, "type"    # C
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 813
    return-void
.end method

.method private threadSleep()V
    .registers 5

    .prologue
    .line 219
    :try_start_0
    const-string v1, "LppFusion"

    const-string v2, "Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->sleep(J)V

    .line 228
    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_16} :catch_17

    .line 233
    :goto_16
    return-void

    .line 230
    :catch_17
    move-exception v0

    .line 231
    .local v0, "ie":Ljava/lang/InterruptedException;
    const-string v1, "LppFusion"

    const-string v2, "Out of Sleep! 2"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method private updateLppFusionStatus()V
    .registers 1

    .prologue
    .line 798
    return-void
.end method

.method private updateLppFusionStatus(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 805
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 807
    return-void
.end method

.method private waitOnQ()V
    .registers 11

    .prologue
    .line 487
    const/4 v4, 0x1

    .line 488
    .local v4, "polling":Z
    const/4 v5, 0x0

    .line 490
    .local v5, "qdata":Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;
    :goto_2
    if-eqz v4, :cond_62

    .line 493
    :try_start_4
    monitor-enter p0
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_5} :catch_57

    .line 494
    :try_start_5
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;

    move-object v5, v0

    .line 495
    const-string v6, "LppFusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received msg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in Q:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->lppQ:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v8}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppFusion$QMsg:[I

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->msgid:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_16a

    .line 568
    const-string v6, "LppFusion"

    const-string/jumbo v7, "unspecified msg id"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :goto_52
    :pswitch_52
    monitor-exit p0

    goto :goto_2

    :catchall_54
    move-exception v6

    monitor-exit p0
    :try_end_56
    .catchall {:try_start_5 .. :try_end_56} :catchall_54

    :try_start_56
    throw v6
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_57} :catch_57

    .line 572
    :catch_57
    move-exception v2

    .line 573
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string v6, "LppFusion"

    const-string v7, "IE in q"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 580
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_62
    const-string v6, "LppFusion"

    const-string/jumbo v7, "polling stopped"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void

    .line 500
    :pswitch_6b
    :try_start_6b
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->threadSleep()V

    goto :goto_52

    .line 511
    :pswitch_6f
    const/4 v4, 0x0

    .line 512
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    goto :goto_52

    .line 516
    :pswitch_7c
    const-string v6, "LppFusion"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "size of APDR data "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/4 v3, 0x0

    .local v3, "inx":I
    :goto_9e
    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_106

    .line 520
    const-string v7, "LppFusion"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Location request MovingStatus "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    .line 528
    add-int/lit8 v6, v3, 0x1

    int-to-long v6, v6

    iget-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->apdrStepNumber:J

    cmp-long v6, v6, v8

    if-gtz v6, :cond_e8

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_111

    .line 531
    :cond_e8
    const-string v6, "LppFusion"

    const-string v7, "Location request"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_REQUEST:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v8

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v6, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v7, v8, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(II)V

    .line 539
    :cond_106
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listAPDR:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverAPDRData(Ljava/util/ArrayList;)V

    goto/16 :goto_52

    .line 519
    :cond_111
    add-int/lit8 v3, v3, 0x1

    goto :goto_9e

    .line 543
    .end local v3    # "inx":I
    :pswitch_114
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 548
    :pswitch_125
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_LIST_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->listLoc:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 553
    :pswitch_136
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 558
    :pswitch_147
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_52

    .line 563
    :pswitch_158
    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->LOCATION_PASS_IN_BATCH_FOUND:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v7

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->loc:Landroid/location/Location;
    invoke-static {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QData;)Landroid/location/Location;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(ILjava/lang/Object;)V
    :try_end_167
    .catchall {:try_start_6b .. :try_end_167} :catchall_54

    goto/16 :goto_52

    .line 497
    nop

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_52
        :pswitch_6f
        :pswitch_7c
        :pswitch_114
        :pswitch_125
        :pswitch_136
        :pswitch_147
        :pswitch_158
    .end packed-switch
.end method


# virtual methods
.method public Debug_LogString(Ljava/lang/String;)V
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 215
    return-void
.end method

.method public getLogHandle()Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    .registers 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    return-object v0
.end method

.method public notifyApdrData(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 612
    .local p1, "apdrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const-string v1, "LppFusion"

    const-string v2, "notifyApdrData"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v0, 0x0

    .local v0, "inx":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_32

    .line 615
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v3, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APDR data from sensor Hub - moving status : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v1, v1, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 614
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 621
    :cond_32
    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_APDR_DATA_RXED:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;Ljava/lang/Object;)V

    .line 623
    return-void
.end method

.method public notifyStayArea(I)V
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 626
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    if-eqz v0, :cond_9

    .line 627
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    .line 629
    :cond_9
    return-void
.end method

.method public pauseLPP()V
    .registers 4

    .prologue
    .line 178
    const-string v0, "LppFusion"

    const-string/jumbo v1, "pause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string v2, "LppFusion, pause()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 184
    return-void
.end method

.method public registerListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V
    .registers 3
    .param p1, "lnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    .line 199
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->setILppDataProviderListener(Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;)V

    .line 201
    return-void
.end method

.method public resumeLPP()V
    .registers 4

    .prologue
    .line 187
    const-string v0, "LppFusion"

    const-string/jumbo v1, "resume()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    const/4 v1, 0x6

    const-string v2, "LppFusion, resume()"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    .line 193
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 159
    const-string v0, "LppFusion"

    const-string/jumbo v1, "run"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const-string v0, "LPPThread"

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->setName(Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    const-string v1, "LppFusion"

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    .line 164
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->start()V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->START:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->sendMessage(I)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->waitOnQ()V

    .line 168
    return-void
.end method

.method public setLppResolution(I)V
    .registers 4
    .param p1, "res"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    if-eqz v0, :cond_9

    .line 206
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->setLppResolution(I)V

    .line 209
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set property command from APP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->Debug_LogString(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method public stopLpp()V
    .registers 3

    .prologue
    .line 171
    const-string v0, "LppFusion"

    const-string v1, "LPP stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;->QMSG_LPPA_STOP:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->addQ(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$QMsg;)V

    .line 175
    return-void
.end method
