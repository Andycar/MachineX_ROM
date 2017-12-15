.class public Lcom/absolute/android/persistservice/ABTPersistenceService;
.super Lcom/absolute/android/persistence/IABTPersistence$Stub;
.source "SourceFile"


# static fields
.field private static final A:I = 0x1

.field private static final B:I = 0x2

.field private static final C:I = 0x1

.field private static final D:Z = true

.field private static E:Ljava/lang/String; = null

.field private static F:Ljava/lang/String; = null

.field private static G:Ljava/lang/String; = null

.field protected static final a:I = 0x1

.field protected static final b:Ljava/lang/String; = "abt-persistence-settings"

.field protected static final c:Ljava/lang/String; = "abt-persistence-apps"

.field protected static final d:Ljava/lang/String; = "abt-persistence-apps-to-install"

.field protected static final e:Ljava/lang/String; = "abt-persistence-apps-fallback"

.field protected static final f:Ljava/lang/String; = "750"

.field protected static final g:Ljava/lang/String; = "600"

.field protected static final h:Z = false

.field protected static final i:Z = true

.field protected static final j:I = 0x2000

.field protected static final k:Ljava/lang/String; = "SHA256"

.field static final synthetic m:Z

.field private static final n:I = 0xc38

.field private static final o:Z = false

.field private static final p:Z = false

.field private static final q:Z = true

.field private static final r:Z = false

.field private static final s:I = 0x14

.field private static final t:I = 0x14

.field private static final u:I = 0x5

.field private static final v:Ljava/lang/String; = ".apk"

.field private static final w:Ljava/lang/String; = "abt-persistence-pm-lock"

.field private static final x:Ljava/lang/String; = "abt-persistence-wifi-lock"

.field private static final y:I = 0x14

.field private static final z:I = 0x14


# instance fields
.field private H:Lcom/absolute/android/persistservice/aa;

.field private I:Landroid/content/Context;

.field private J:Ljava/util/Hashtable;

.field private K:Lcom/absolute/android/persistservice/y;

.field private L:Lcom/absolute/android/persistservice/n;

.field private M:Lcom/absolute/android/persistservice/n;

.field private N:Lcom/absolute/android/persistservice/n;

.field private O:Lcom/absolute/android/persistservice/l;

.field private P:Lcom/absolute/android/persistservice/l;

.field private Q:Lcom/absolute/android/persistservice/l;

.field private R:Lcom/absolute/android/persistservice/k;

.field private S:Lcom/absolute/android/persistservice/d;

.field private T:Lcom/absolute/android/persistservice/c;

.field private U:Ljava/util/HashSet;

.field private V:Lcom/absolute/android/persistservice/o;

.field private W:Ljava/util/Hashtable;

.field private X:Ljava/lang/Object;

.field private Y:Ljava/lang/Object;

.field private Z:Lcom/absolute/android/persistservice/ab;

.field l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    const-class v0, Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_19

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    .line 156
    const-string v0, "/mnt/pia"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->E:Ljava/lang/String;

    .line 159
    const-string v0, "AbsoluteSoftware"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Ljava/lang/String;

    .line 162
    const-string/jumbo v0, "package_verifier_enable"

    sput-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    return-void

    .line 67
    :cond_19
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 921
    invoke-direct {p0}, Lcom/absolute/android/persistence/IABTPersistence$Stub;-><init>()V

    .line 230
    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    .line 923
    iput-object p1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    .line 927
    new-instance v0, Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ab;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    .line 930
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Ljava/util/Hashtable;

    .line 931
    new-instance v0, Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string v2, "abt-persistence-service"

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/ab;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    .line 932
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Ljava/util/Hashtable;

    const-string v1, "abt-persistence-service"

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/y;)V

    .line 937
    new-instance v0, Lcom/absolute/android/persistservice/aa;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v3, "abt-persistence-settings"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/aa;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    .line 938
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ag;Z)V

    .line 941
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v1, "ABTPersistenceService starting up - version: 3128"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 944
    iput-boolean v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    .line 946
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 947
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/aa;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_15b

    .line 950
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Setting build fingerprint to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 953
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;)V

    .line 972
    :cond_7a
    :goto_7a
    new-instance v0, Lcom/absolute/android/persistservice/n;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v3, "abt-persistence-apps"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/n;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    .line 973
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ag;Z)V

    .line 974
    new-instance v0, Lcom/absolute/android/persistservice/n;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v3, "abt-persistence-apps-to-install"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/n;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    .line 975
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v1, v6}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ag;Z)V

    .line 976
    new-instance v0, Lcom/absolute/android/persistservice/n;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v3, "abt-persistence-apps-fallback"

    invoke-direct {v0, v1, v2, v3}, Lcom/absolute/android/persistservice/n;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    .line 977
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v1, v5}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ag;Z)V

    .line 979
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Ljava/util/Hashtable;

    .line 980
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/HashSet;

    .line 986
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Ljava/util/Hashtable;

    const-string v1, "3082020b30820174a00302010202044d26012f300d06092a864886f70d0101050500304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f667477617265301e170d3131303130363137353134335a170d3430313232393137353134335a304a310b3009060355040613024341310b3009060355040813024243311230100603550407130956616e636f75766572311a3018060355040a13114162736f6c75746520536f66747761726530819f300d06092a864886f70d010101050003818d00308189028181008624ba8f680f679b9b4ce208d42a655c82d25e10e40cee65c5e53b48b5d00d25e33a97931614dcd14933f426070b9f1f17dfd2edc970f5a9449ad481c51c5204b91b5220eebd9a41c56fc29f3437eb3995d1ef2ebd00fb23f48260f1ea95b96d41c208add6effa815237a84c630a3c8d99a4e4048467f7a7ed659ac33421effb0203010001300d06092a864886f70d0101050500038181005dc61981f6a1d1a373f88b0d5491324a122ad81241a3746a256029b60c09980ee698e9ea59afa2f15e0d0a912ef2a975820632d9b95cc469f749776b601399c77055f57e8f6cd7a373d8c79cb8472c1cc833867ca62e0257b2c00093156ec2909ea6d6e6a5f093876c8b21fda70d3bfe585a7b564a48ff72c73f4d25ffe8597b"

    const-string v2, "Absolute Software Android signature"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 990
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_Install"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 991
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 992
    new-instance v1, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/l;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    .line 994
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_InvokeMethod"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 996
    new-instance v1, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/l;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->P:Lcom/absolute/android/persistservice/l;

    .line 998
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABTPersistence_Download"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 999
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1000
    new-instance v1, Lcom/absolute/android/persistservice/l;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/l;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Q:Lcom/absolute/android/persistservice/l;

    .line 1003
    new-instance v0, Lcom/absolute/android/persistservice/c;

    invoke-direct {v0, p0, v5}, Lcom/absolute/android/persistservice/c;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/c;

    .line 1004
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->T:Lcom/absolute/android/persistservice/c;

    invoke-static {v0}, Lcom/absolute/android/persistservice/c;->a(Lcom/absolute/android/persistservice/c;)V

    .line 1007
    new-instance v0, Lcom/absolute/android/persistservice/k;

    invoke-direct {v0, p0, v5}, Lcom/absolute/android/persistservice/k;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->R:Lcom/absolute/android/persistservice/k;

    .line 1008
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->R:Lcom/absolute/android/persistservice/k;

    invoke-static {v0}, Lcom/absolute/android/persistservice/k;->a(Lcom/absolute/android/persistservice/k;)V

    .line 1012
    new-instance v0, Lcom/absolute/android/persistservice/d;

    invoke-direct {v0, p0, v5}, Lcom/absolute/android/persistservice/d;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Lcom/absolute/android/persistservice/d;

    .line 1015
    new-instance v0, Lcom/absolute/android/persistservice/o;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/absolute/android/persistservice/o;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/y;Lcom/absolute/android/persistservice/n;Lcom/absolute/android/persistservice/ab;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    .line 1021
    :try_start_13a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "chmod 750 "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_13a .. :try_end_152} :catch_196

    .line 1029
    :goto_152
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h()V

    .line 1032
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ab;->a()V

    .line 1035
    return-void

    .line 959
    :cond_15b
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/aa;->b()Ljava/lang/String;

    move-result-object v1

    .line 961
    if-eqz v0, :cond_7a

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 963
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Build fingerprint has changed since last boot.Now: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", previous: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Initiating handling of firmware update."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;)V

    .line 968
    iput-boolean v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->l:Z

    goto/16 :goto_7a

    .line 1023
    :catch_196
    move-exception v0

    .line 1024
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set permission of persisted folder, got exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    goto :goto_152
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;
    .registers 12

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1858
    .line 1859
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1860
    :cond_e
    if-nez p1, :cond_1f

    .line 1861
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "GetAppInfoRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1862
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "doGetAppInfo() failed"

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1863
    throw v0

    .line 1866
    :cond_1f
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v4

    .line 1867
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->b(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v5

    .line 1872
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1875
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1876
    if-eqz v0, :cond_143

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_143

    .line 1881
    :try_start_3d
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1882
    const/4 v2, 0x1

    const-string v3, "abt-persistence-pm-lock"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_4e
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4e} :catch_c1
    .catchall {:try_start_3d .. :try_end_4e} :catchall_174

    move-result-object v3

    .line 1883
    :try_start_4f
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1885
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1886
    const/4 v2, 0x1

    const-string v6, "abt-persistence-wifi-lock"

    invoke-virtual {v0, v2, v6}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_63
    .catch Ljava/lang/Throwable; {:try_start_4f .. :try_end_63} :catch_17b
    .catchall {:try_start_4f .. :try_end_63} :catchall_178

    move-result-object v2

    .line 1887
    :try_start_64
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 1889
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->c(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceIdImpl()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-static {v0, v4, v6, v7}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1893
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Initiating GetAppInfo() request for package "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1897
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->d(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-static {v5, v6, v0, v7, v8}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistservice/y;Landroid/content/Context;)Lcom/absolute/android/persistence/AppInfoProperties;
    :try_end_9e
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_9e} :catch_182
    .catchall {:try_start_64 .. :try_end_9e} :catchall_113

    move-result-object v0

    .line 1900
    :try_start_9f
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 1901
    const/4 v1, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, v1, v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_aa} :catch_188
    .catchall {:try_start_9f .. :try_end_aa} :catchall_113

    .line 1918
    :cond_aa
    if-eqz v3, :cond_b5

    .line 1919
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 1920
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1923
    :cond_b5
    if-eqz v2, :cond_c0

    .line 1924
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1925
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 1945
    :cond_c0
    :goto_c0
    return-object v0

    .line 1904
    :catch_c1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    .line 1905
    :goto_c7
    :try_start_c7
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "doGetAppInfo for package: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " got exception/throwable for URL: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1907
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1909
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v5

    if-eqz v5, :cond_106

    .line 1910
    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v5, v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 1914
    :cond_106
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->f(Lcom/absolute/android/persistservice/g;)Z

    move-result v5

    if-eqz v5, :cond_12b

    .line 1915
    new-instance v0, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v5, 0x0

    invoke-direct {v0, v4, v1, v5}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v0
    :try_end_113
    .catchall {:try_start_c7 .. :try_end_113} :catchall_113

    .line 1918
    :catchall_113
    move-exception v0

    :goto_114
    if-eqz v3, :cond_11f

    .line 1919
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_11f

    .line 1920
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1923
    :cond_11f
    if-eqz v2, :cond_12a

    .line 1924
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_12a

    .line 1925
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_12a
    throw v0

    .line 1918
    :cond_12b
    if-eqz v3, :cond_136

    .line 1919
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_136

    .line 1920
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1923
    :cond_136
    if-eqz v2, :cond_c0

    .line 1924
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_c0

    .line 1925
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto/16 :goto_c0

    .line 1933
    :cond_143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Download of APK for package: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1935
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-direct {v2, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    .line 1936
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/DownloadApkException;->c()V

    .line 1937
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v0

    if-eqz v0, :cond_16d

    .line 1938
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/DownloadApkException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V

    .line 1940
    :cond_16d
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->f(Lcom/absolute/android/persistservice/g;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 1941
    throw v2

    .line 1918
    :catchall_174
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_114

    :catchall_178
    move-exception v0

    move-object v2, v1

    goto :goto_114

    .line 1904
    :catch_17b
    move-exception v0

    move-object v2, v1

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_c7

    :catch_182
    move-exception v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_c7

    :catch_188
    move-exception v1

    goto/16 :goto_c7

    :cond_18b
    move-object v0, v1

    goto/16 :goto_c0
.end method

.method private a(Lcom/absolute/android/persistservice/j;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    .registers 21

    .prologue
    .line 2282
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v3

    .line 2283
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2288
    invoke-virtual/range {p3 .. p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v13

    .line 2289
    sget-boolean v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v1, :cond_19

    if-nez v13, :cond_19

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 2290
    :cond_19
    if-nez v13, :cond_31

    .line 2292
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to invoke  GetAppInfo HTTP request because there is no pending install Application Profile for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2295
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2299
    :cond_31
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v3}, Lcom/absolute/android/persistservice/n;->e(Ljava/lang/String;)I

    move-result v16

    .line 2300
    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v1

    move/from16 v0, v16

    if-lt v0, v1, :cond_66

    .line 2301
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exceeded maximum number of update attempts ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") via GetAppInfo request"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2302
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 2303
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2306
    :cond_66
    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v5

    .line 2309
    :try_start_6a
    new-instance v1, Lcom/absolute/android/persistservice/g;

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/absolute/android/persistservice/g;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;

    move-result-object v1

    .line 2318
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2319
    if-eqz v2, :cond_8d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_b4

    .line 2320
    :cond_8d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed because the server response  to GetAppInfo does not contain a PackageName value for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2323
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_a3
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_6a .. :try_end_a3} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_6a .. :try_end_a3} :catch_ec

    .line 2404
    :catch_a3
    move-exception v1

    .line 2406
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v2

    if-nez v2, :cond_b3

    .line 2407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 2409
    :cond_b3
    throw v1

    .line 2325
    :cond_b4
    :try_start_b4
    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_130

    .line 2326
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "GetAppInfo failed because the server response  package name: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match the existing / expected one: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2330
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2
    :try_end_ec
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_b4 .. :try_end_ec} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_b4 .. :try_end_ec} :catch_ec

    .line 2410
    :catch_ec
    move-exception v1

    .line 2411
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    add-int/lit8 v4, v16, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 2412
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "GetAppInfoAndDownloadAPK for package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got exception/throwable for URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2417
    new-instance v3, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v3

    .line 2333
    :cond_130
    :try_start_130
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppVersion()I

    move-result v9

    .line 2334
    if-nez v9, :cond_14c

    .line 2335
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed because the server response  does not contain a valid VersionCode value for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2338
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2349
    :cond_14c
    invoke-virtual/range {p3 .. p3}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v2

    .line 2350
    if-eqz v2, :cond_19d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_19d

    .line 2351
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2352
    move/from16 v0, p2

    if-ne v9, v0, :cond_19d

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_19d

    .line 2354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "The version: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " of package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " returned by GetAppInfo() query to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is already installed. No need to download the APK."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2402
    :goto_19c
    return-object p3

    .line 2362
    :cond_19d
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v10

    .line 2363
    if-eqz v10, :cond_1a9

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1c5

    .line 2364
    :cond_1a9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the server response to GetAppInfo does not contain a DownloadUrl value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2367
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2369
    :cond_1c5
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v12

    .line 2370
    if-eqz v12, :cond_1d1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1ed

    .line 2371
    :cond_1d1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GetAppInfo failed for URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the server response to GetAppInfo does not contain a DigitalSignature value."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2374
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    throw v2

    .line 2377
    :cond_1ed
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v11

    .line 2382
    invoke-virtual {v1, v13}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 2385
    new-instance v6, Lcom/absolute/android/persistservice/e;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v7, p0

    move-object v8, v3

    invoke-direct/range {v6 .. v15}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    .line 2397
    new-instance p3, Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-object/from16 v0, p3

    invoke-direct {v0, v1, v2, v12}, Lcom/absolute/android/persistservice/PersistedAppInfo;-><init>(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 2400
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_212
    .catch Lcom/absolute/android/persistservice/DownloadApkException; {:try_start_130 .. :try_end_212} :catch_a3
    .catch Ljava/lang/Throwable; {:try_start_130 .. :try_end_212} :catch_ec

    goto :goto_19c
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/y;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    return-object v0
.end method

.method protected static a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1087
    const-string v0, "1"

    const-string/jumbo v1, "ro.kernel.qemu"

    invoke-static {v1}, Lcom/absolute/android/utils/DeviceUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1091
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v0

    .line 1097
    :goto_13
    return-object v0

    .line 1095
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "persdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "absolute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 1998
    .line 1999
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_e

    if-nez p1, :cond_e

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2000
    :cond_e
    if-nez p1, :cond_1f

    .line 2001
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "DownloadApkRequest is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2002
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "doDownloadApk() failed"

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2003
    throw v0

    .line 2006
    :cond_1f
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v0

    .line 2007
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v1

    .line 2008
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    .line 2009
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->d(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    .line 2010
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->e(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v4

    .line 2014
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".apk"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2019
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 2022
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 2023
    if-eqz v5, :cond_19d

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_19d

    .line 2028
    :try_start_66
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string/jumbo v8, "power"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 2029
    const/4 v8, 0x1

    const-string v9, "abt-persistence-pm-lock"

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_77
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_77} :catch_11d
    .catchall {:try_start_66 .. :try_end_77} :catchall_1ce

    move-result-object v11

    .line 2030
    :try_start_78
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2032
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v5, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 2033
    const/4 v8, 0x1

    const-string v9, "abt-persistence-wifi-lock"

    invoke-virtual {v5, v8, v9}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    :try_end_8c
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_8c} :catch_1d6
    .catchall {:try_start_78 .. :try_end_8c} :catchall_1d1

    move-result-object v10

    .line 2034
    :try_start_8d
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 2036
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_a4
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_a4} :catch_1db
    .catchall {:try_start_8d .. :try_end_a4} :catchall_1d3

    move-result-object v6

    .line 2037
    :try_start_a5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    .line 2041
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 2044
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_c3

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_c3

    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v8

    if-nez v8, :cond_1ef

    .line 2045
    :cond_c3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2046
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_dd
    .catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_dd} :catch_1e1
    .catchall {:try_start_a5 .. :try_end_dd} :catchall_1d3

    move-object v12, v5

    move-object v5, v6

    move-object v6, v12

    .line 2049
    :goto_e0
    :try_start_e0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 2050
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 2052
    :cond_e9
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    .line 2055
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v6

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->g(Lcom/absolute/android/persistservice/e;)I

    move-result v7

    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-static/range {v0 .. v9}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;ILcom/absolute/android/persistservice/y;Landroid/content/Context;)V

    .line 2059
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v1

    if-eqz v1, :cond_106

    .line 2060
    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_106} :catch_1e7
    .catchall {:try_start_e0 .. :try_end_106} :catchall_1d3

    .line 2077
    :cond_106
    if-eqz v11, :cond_111

    .line 2078
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_111

    .line 2079
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2082
    :cond_111
    if-eqz v10, :cond_11c

    .line 2083
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2084
    invoke-virtual {v10}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 2104
    :cond_11c
    :goto_11c
    return-object v5

    .line 2063
    :catch_11d
    move-exception v1

    move-object v3, v6

    move-object v5, v6

    .line 2064
    :goto_120
    :try_start_120
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Download of APK for package: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " got exception for URL: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2066
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", Exception: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2068
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v2

    if-eqz v2, :cond_160

    .line 2069
    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1, v2, v4, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2073
    :cond_160
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->h(Lcom/absolute/android/persistservice/e;)Z

    move-result v2

    if-eqz v2, :cond_186

    .line 2074
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v4}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2
    :try_end_16d
    .catchall {:try_start_120 .. :try_end_16d} :catchall_16d

    .line 2077
    :catchall_16d
    move-exception v0

    move-object v11, v3

    :goto_16f
    if-eqz v11, :cond_17a

    .line 2078
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 2079
    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2082
    :cond_17a
    if-eqz v6, :cond_185

    .line 2083
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_185

    .line 2084
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    :cond_185
    throw v0

    .line 2077
    :cond_186
    if-eqz v3, :cond_191

    .line 2078
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_191

    .line 2079
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2082
    :cond_191
    if-eqz v6, :cond_11c

    .line 2083
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_11c

    .line 2084
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_11c

    .line 2092
    :cond_19d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download of APK for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cannot be performed as there is currently no network connectivity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2094
    new-instance v1, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-direct {v1, v0, v9}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Z)V

    .line 2095
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->c()V

    .line 2096
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    if-eqz v0, :cond_1c7

    .line 2097
    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v9, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V

    .line 2099
    :cond_1c7
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->h(Lcom/absolute/android/persistservice/e;)Z

    move-result v0

    if-eqz v0, :cond_1ec

    .line 2100
    throw v1

    .line 2077
    :catchall_1ce
    move-exception v0

    move-object v11, v6

    goto :goto_16f

    :catchall_1d1
    move-exception v0

    goto :goto_16f

    :catchall_1d3
    move-exception v0

    move-object v6, v10

    goto :goto_16f

    .line 2063
    :catch_1d6
    move-exception v1

    move-object v3, v11

    move-object v5, v6

    goto/16 :goto_120

    :catch_1db
    move-exception v1

    move-object v3, v11

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_120

    :catch_1e1
    move-exception v1

    move-object v3, v11

    move-object v5, v6

    move-object v6, v10

    goto/16 :goto_120

    :catch_1e7
    move-exception v1

    move-object v6, v10

    move-object v3, v11

    goto/16 :goto_120

    :cond_1ec
    move-object v5, v6

    goto/16 :goto_11c

    :cond_1ef
    move-object v12, v5

    move-object v5, v6

    move-object v6, v12

    goto/16 :goto_e0
.end method

.method private a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    .line 1596
    .line 1598
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1601
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 1602
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_7d

    .line 1611
    if-eqz v0, :cond_7c

    if-eq v0, p2, :cond_7c

    .line 1612
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Installed version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not match the version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " specified in the application profile.  The profile will be updated to match the version actually installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 1617
    invoke-virtual {p3, v0}, Lcom/absolute/android/persistence/AppProfile;->setVersion(I)V

    .line 1620
    const/4 v1, 0x0

    .line 1622
    :try_start_43
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1623
    invoke-static {p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4b} :catch_a1

    move-result-object v0

    .line 1624
    :try_start_4c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_9f

    .line 1627
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to rename APK file from: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". File.renameTo() returned false."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_7c} :catch_d0

    .line 1639
    :cond_7c
    :goto_7c
    return-object p4

    .line 1603
    :catch_7d
    move-exception v0

    .line 1605
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got NameNotFoundException for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " after successfully installing it. Can\'t get it\'s version"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1607
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1608
    new-instance v2, Lcom/absolute/android/persistservice/DownloadApkException;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lcom/absolute/android/persistservice/DownloadApkException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Z)V

    throw v2

    :cond_9f
    move-object p4, v0

    .line 1636
    goto :goto_7c

    .line 1633
    :catch_a1
    move-exception v0

    .line 1634
    :goto_a2
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to rename APK file from: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Got exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    goto :goto_7c

    .line 1633
    :catch_d0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_a2
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    .registers 13

    .prologue
    .line 1266
    if-eqz p3, :cond_8

    :try_start_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_23

    .line 1267
    :cond_8
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to make a copy of the APK for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". The ApkPath is null/empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 1346
    :cond_22
    :goto_22
    return-object p3

    .line 1272
    :cond_23
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1274
    invoke-static {p1, p2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1275
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1277
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    .line 1278
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3e

    .line 1279
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 1283
    :cond_3e
    if-nez p4, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_54

    move-object p3, v0

    .line 1288
    goto :goto_22

    .line 1292
    :cond_54
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1293
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1297
    :cond_5d
    invoke-virtual {v3}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    .line 1304
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_b3

    .line 1305
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Insufficient space available in persisted partition to make a copy of the APK in: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". File size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", usable space: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_95} :catch_96

    goto :goto_22

    .line 1340
    :catch_96
    move-exception v0

    .line 1341
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "copyApkToPersistentStorageArea() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 1312
    :cond_b3
    :try_start_b3
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1314
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1315
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1323
    const/16 v5, 0x2000

    new-array v5, v5, [B

    .line 1325
    :goto_c4
    invoke-virtual {v3, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_cf

    .line 1326
    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_c4

    .line 1328
    :cond_cf
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1329
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    .line 1331
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1333
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e8

    .line 1334
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_e8} :catch_96

    :cond_e8
    move-object p3, v0

    .line 1337
    goto/16 :goto_22
.end method

.method private a(I)V
    .registers 4

    .prologue
    .line 1048
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/absolute/android/persistservice/a;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/a;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1080
    return-void
.end method

.method private a(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 2227
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2228
    :cond_d
    if-eqz p1, :cond_4b

    .line 2229
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2232
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v1

    if-ne v1, v4, :cond_40

    .line 2233
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    .line 2234
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4c

    .line 2235
    :cond_25
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot start: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " on install because the StartOnInstall intent specified in the App Profile is empty."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2247
    :cond_40
    :goto_40
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-ne v0, v4, :cond_4b

    .line 2251
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, p1, v4}, Lcom/absolute/android/persistservice/o;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 2254
    :cond_4b
    return-void

    .line 2242
    :cond_4c
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_40
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V
    .registers 4

    .prologue
    .line 67
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/absolute/android/persistservice/a;

    invoke-direct {v1, p0, p1}, Lcom/absolute/android/persistservice/a;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 67
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_d
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/MethodSpec;

    move-result-object v3

    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v4

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getMethodName()Ljava/lang/String;

    move-result-object v5

    :try_start_19
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getApkOrJarPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgValues()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lcom/absolute/android/persistence/MethodReturnValue;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_4d} :catch_10e

    if-eqz v4, :cond_54

    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_51
    invoke-interface {v4, v3, v1, v0, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55

    :cond_54
    :goto_54
    return-void

    :catch_55
    move-exception v0

    :try_start_56
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got exception invoking IABTResultReceiver.onInvokeResult() for successful invocation of method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_7e} :catch_7f

    goto :goto_54

    :catch_7f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    :goto_82
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    const-string v0, "null"

    if-eqz v6, :cond_8e

    invoke-static {v6}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :cond_8e
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception in ABTPersistenceService doInvokeMethod for method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_54

    const/4 v6, 0x0

    :try_start_c3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " Cause: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v2, v6, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_e1} :catch_e3

    goto/16 :goto_54

    :catch_e3
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onInvokeResult() for failed invocation of method: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    :catch_10e
    move-exception v0

    move-object v1, v0

    goto/16 :goto_82
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V
    .registers 17

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 67
    sget-boolean v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v1, :cond_f

    if-nez p1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v10

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v11

    :try_start_17
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Starting install of package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_30} :catch_2af
    .catchall {:try_start_17 .. :try_end_30} :catchall_2ad

    move-result-object v1

    const/4 v2, 0x0

    :try_start_32
    invoke-virtual {v1, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_38} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_38} :catch_2af
    .catchall {:try_start_32 .. :try_end_38} :catchall_2ad

    move v9, v1

    :goto_39
    if-nez v9, :cond_67

    move v6, v7

    :goto_3c
    :try_start_3c
    monitor-enter p0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_2b7
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2ad

    :try_start_3d
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v10}, Lcom/absolute/android/persistservice/n;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v12

    if-nez v12, :cond_69

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Aborting install operation for package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " as there is no longer a pending install entry."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    monitor-exit p0
    :try_end_60
    .catchall {:try_start_3d .. :try_end_60} :catchall_dd

    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    :goto_63
    return-void

    :catch_64
    move-exception v1

    move v9, v5

    goto :goto_39

    :cond_67
    move v6, v5

    goto :goto_3c

    :cond_69
    :try_start_69
    invoke-virtual {v12}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/AppProfile;
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_dd

    :try_start_73
    invoke-virtual {v12}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_2ce

    move-result-object v4

    :try_start_77
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v10}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v13

    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_2d4

    :try_start_7e
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    if-eqz v4, :cond_13e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_13e

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_13e

    move v8, v7

    :goto_96
    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_9c

    if-nez v8, :cond_2db

    :cond_9c
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v12}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/j;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    if-eqz v9, :cond_141

    if-ne v9, v2, :cond_141

    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Target version: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " of application: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " is already installed."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    invoke-direct {p0, v10, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_d9} :catch_2bf
    .catchall {:try_start_7e .. :try_end_d9} :catchall_2ad

    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto :goto_63

    :catchall_dd
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_e0
    :try_start_e0
    monitor-exit p0

    throw v1
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e2} :catch_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_2ad

    :catch_e2
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v14, v3

    move v3, v6

    move-object v6, v4

    move-object v4, v14

    :goto_e9
    :try_start_e9
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Install of package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_103
    .catchall {:try_start_e9 .. :try_end_103} :catchall_233

    if-eqz v11, :cond_10e

    const/4 v1, 0x1

    const/4 v8, 0x0

    :try_start_107
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v1, v8, v10, v9}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10e} :catch_216
    .catchall {:try_start_107 .. :try_end_10e} :catchall_233

    :cond_10e
    :goto_10e
    :try_start_10e
    instance-of v1, v2, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v1, :cond_239

    move-object v0, v2

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->a()Z

    move-result v1

    if-ne v1, v7, :cond_239

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "The download and install of APK for package: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " will not be re-tried as the exception was considered fatal."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    invoke-direct {p0, v10, v6, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_139
    .catchall {:try_start_10e .. :try_end_139} :catchall_233

    :cond_139
    :goto_139
    invoke-direct {p0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_13e
    move v8, v5

    goto/16 :goto_96

    :cond_141
    move-object v5, v1

    move v1, v7

    :goto_143
    :try_start_143
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v8

    if-ne v8, v7, :cond_14d

    invoke-direct {p0, v10, v2, v4, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_143 .. :try_end_14c} :catch_2c6
    .catchall {:try_start_143 .. :try_end_14c} :catchall_2ad

    move-result-object v4

    :cond_14d
    :try_start_14d
    const-string v1, "SHA256"

    invoke-static {v1, v4}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_152} :catch_1dd
    .catchall {:try_start_14d .. :try_end_152} :catchall_2ad

    move-result-object v1

    :goto_153
    if-eqz v9, :cond_15a

    :try_start_155
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v8, v10}, Lcom/absolute/android/persistservice/o;->b(Ljava/lang/String;)V

    :cond_15a
    invoke-direct {p0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_15d} :catch_2c6
    .catchall {:try_start_155 .. :try_end_15d} :catchall_2ad

    move-result-object v3

    const/4 v8, 0x0

    :try_start_15f
    invoke-direct {p0, v10, v3, v2, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-direct {p0, v10, v2, v5, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    monitor-enter p0
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_167} :catch_20e
    .catchall {:try_start_15f .. :try_end_167} :catchall_2ad

    :try_start_167
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v5}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;)V

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v2

    if-ne v2, v7, :cond_203

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v10}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_18e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_18e

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18e

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    :cond_18e
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v10, v4, v1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_193
    monitor-exit p0
    :try_end_194
    .catchall {:try_start_167 .. :try_end_194} :catchall_20b

    :try_start_194
    invoke-direct {p0, v10, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Successfully installed package: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ". Version = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", persisted = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", monitored = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_1d8
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_1d8} :catch_20e
    .catchall {:try_start_194 .. :try_end_1d8} :catchall_2ad

    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto/16 :goto_63

    :catch_1dd
    move-exception v1

    :try_start_1de
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to get Digest for APK: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", algorithm: , exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/lang/Throwable; {:try_start_1de .. :try_end_200} :catch_2c6
    .catchall {:try_start_1de .. :try_end_200} :catchall_2ad

    move-object v1, v3

    goto/16 :goto_153

    :cond_203
    :try_start_203
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v10, v2, v8}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20a
    .catchall {:try_start_203 .. :try_end_20a} :catchall_20b

    goto :goto_193

    :catchall_20b
    move-exception v1

    :try_start_20c
    monitor-exit p0

    throw v1
    :try_end_20e
    .catch Ljava/lang/Throwable; {:try_start_20c .. :try_end_20e} :catch_20e
    .catchall {:try_start_20c .. :try_end_20e} :catchall_2ad

    :catch_20e
    move-exception v2

    move v14, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v14

    goto/16 :goto_e9

    :catch_216
    move-exception v1

    :try_start_217
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Got exception invoking  IABTResultReceiver.onOperationResult() for failed install of package: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " Exception: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_231
    .catchall {:try_start_217 .. :try_end_231} :catchall_233

    goto/16 :goto_10e

    :catchall_233
    move-exception v1

    move-object v3, v4

    :goto_235
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    throw v1

    :cond_239
    :try_start_239
    instance-of v1, v2, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v1, :cond_2a8

    check-cast v2, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v1

    if-ne v1, v7, :cond_276

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download of APK for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be re-tried when connectivity is available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_262
    .catchall {:try_start_239 .. :try_end_262} :catchall_233

    :try_start_262
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Lcom/absolute/android/persistservice/d;

    invoke-static {v1}, Lcom/absolute/android/persistservice/d;->a(Lcom/absolute/android/persistservice/d;)V

    monitor-exit v2
    :try_end_271
    .catchall {:try_start_262 .. :try_end_271} :catchall_273

    goto/16 :goto_139

    :catchall_273
    move-exception v1

    :try_start_274
    monitor-exit v2

    throw v1

    :cond_276
    if-eqz v6, :cond_139

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling re-try of update/install of package: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " minutes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    const/4 v2, 0x0

    mul-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v10, v2, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_139

    :cond_2a8
    invoke-direct {p0, v10, v6, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_2ab
    .catchall {:try_start_274 .. :try_end_2ab} :catchall_233

    goto/16 :goto_139

    :catchall_2ad
    move-exception v1

    goto :goto_235

    :catch_2af
    move-exception v2

    move-object v4, v3

    move-object v6, v3

    move-object v14, v3

    move v3, v5

    move-object v5, v14

    goto/16 :goto_e9

    :catch_2b7
    move-exception v2

    move-object v4, v3

    move-object v5, v3

    move v14, v6

    move-object v6, v3

    move v3, v14

    goto/16 :goto_e9

    :catch_2bf
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move v3, v6

    move-object v6, v1

    goto/16 :goto_e9

    :catch_2c6
    move-exception v2

    move v14, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v14

    goto/16 :goto_e9

    :catchall_2ce
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_e0

    :catchall_2d4
    move-exception v2

    move-object v14, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v14

    goto/16 :goto_e0

    :cond_2db
    move v14, v5

    move-object v5, v1

    move v1, v14

    goto/16 :goto_143
.end method

.method private a(Lcom/absolute/android/persistservice/e;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 2135
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->f(Lcom/absolute/android/persistservice/e;)Lcom/absolute/android/persistence/IABTDownloadReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    move v1, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTDownloadReceiver;->onDownloadResult(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_12} :catch_13

    .line 2143
    :goto_12
    return-void

    .line 2137
    :catch_13
    move-exception v0

    .line 2138
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception invoking IABTDownloadReceiver.onDownloadResult() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->a(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->b(Lcom/absolute/android/persistservice/e;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/e;->c(Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method private a(Lcom/absolute/android/persistservice/g;ZLcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    .registers 9

    .prologue
    .line 1976
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    move-result-object v0

    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p2, v1, p3, p4}, Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;->onGetAppInfoResult(ZLjava/lang/String;Lcom/absolute/android/persistence/AppInfoProperties;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 1983
    :goto_b
    return-void

    .line 1978
    :catch_c
    move-exception v0

    .line 1979
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception invoking IABTGetAppInfoReceiver.onGetAppInfoResult() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/absolute/android/persistservice/g;->b(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method private a(Lcom/absolute/android/persistservice/h;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1739
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_d

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1740
    :cond_d
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->a(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/MethodSpec;

    move-result-object v3

    .line 1741
    invoke-static {p1}, Lcom/absolute/android/persistservice/h;->b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v4

    .line 1744
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getMethodName()Ljava/lang/String;

    move-result-object v5

    .line 1752
    :try_start_19
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1753
    new-instance v1, Ldalvik/system/PathClassLoader;

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getApkOrJarPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 1755
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1757
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1758
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 1759
    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getArgValues()[Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1760
    new-instance v1, Lcom/absolute/android/persistence/MethodReturnValue;

    const/4 v6, 0x0

    invoke-direct {v1, v0, v6}, Lcom/absolute/android/persistence/MethodReturnValue;-><init>(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_4d} :catch_10e

    .line 1763
    if-eqz v4, :cond_54

    .line 1769
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_51
    invoke-interface {v4, v3, v1, v0, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_51 .. :try_end_54} :catch_55

    .line 1800
    :cond_54
    :goto_54
    return-void

    .line 1770
    :catch_55
    move-exception v0

    .line 1771
    :try_start_56
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got exception invoking IABTResultReceiver.onInvokeResult() for successful invocation of method: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_56 .. :try_end_7e} :catch_7f

    goto :goto_54

    .line 1777
    :catch_7f
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    .line 1778
    :goto_82
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    .line 1779
    const-string v0, "null"

    .line 1780
    if-eqz v6, :cond_8e

    .line 1781
    invoke-static {v6}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 1783
    :cond_8e
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Exception in ABTPersistenceService doInvokeMethod for method: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Cause: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1786
    if-eqz v4, :cond_54

    .line 1792
    const/4 v6, 0x0

    :try_start_c3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " Cause: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v2, v6, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    :try_end_e1
    .catch Ljava/lang/Throwable; {:try_start_c3 .. :try_end_e1} :catch_e3

    goto/16 :goto_54

    .line 1793
    :catch_e3
    move-exception v0

    .line 1794
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onInvokeResult() for failed invocation of method: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/absolute/android/persistence/MethodSpec;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_54

    .line 1777
    :catch_10e
    move-exception v0

    move-object v1, v0

    goto/16 :goto_82
.end method

.method private a(Lcom/absolute/android/persistservice/j;)V
    .registers 17

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1374
    sget-boolean v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v1, :cond_f

    if-nez p1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1375
    :cond_f
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v10

    .line 1376
    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v11

    .line 1388
    :try_start_17
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Starting install of package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1393
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_30} :catch_2af
    .catchall {:try_start_17 .. :try_end_30} :catchall_2ad

    move-result-object v1

    .line 1397
    const/4 v2, 0x0

    :try_start_32
    invoke-virtual {v1, v10, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 1398
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_38
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_38} :catch_64
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_38} :catch_2af
    .catchall {:try_start_32 .. :try_end_38} :catchall_2ad

    move v9, v1

    .line 1401
    :goto_39
    if-nez v9, :cond_67

    move v6, v7

    .line 1403
    :goto_3c
    :try_start_3c
    monitor-enter p0
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3d} :catch_2b7
    .catchall {:try_start_3c .. :try_end_3d} :catchall_2ad

    .line 1404
    :try_start_3d
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v10}, Lcom/absolute/android/persistservice/n;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v12

    .line 1405
    if-nez v12, :cond_69

    .line 1406
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Aborting install operation for package: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " as there is no longer a pending install entry."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 1408
    monitor-exit p0
    :try_end_60
    .catchall {:try_start_3d .. :try_end_60} :catchall_dd

    .line 1568
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    .line 1569
    :goto_63
    return-void

    :catch_64
    move-exception v1

    move v9, v5

    goto :goto_39

    :cond_67
    move v6, v5

    .line 1401
    goto :goto_3c

    .line 1413
    :cond_69
    :try_start_69
    invoke-virtual {v12}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/AppProfile;
    :try_end_73
    .catchall {:try_start_69 .. :try_end_73} :catchall_dd

    .line 1414
    :try_start_73
    invoke-virtual {v12}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;
    :try_end_76
    .catchall {:try_start_73 .. :try_end_76} :catchall_2ce

    move-result-object v4

    .line 1415
    :try_start_77
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v10}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v13

    .line 1416
    monitor-exit p0
    :try_end_7e
    .catchall {:try_start_77 .. :try_end_7e} :catchall_2d4

    .line 1421
    :try_start_7e
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    .line 1422
    if-eqz v4, :cond_13e

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_13e

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_13e

    move v8, v7

    .line 1423
    :goto_96
    and-int/lit8 v13, v13, 0x4

    if-nez v13, :cond_9c

    if-nez v8, :cond_2db

    .line 1431
    :cond_9c
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v9, v12}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/j;ILcom/absolute/android/persistservice/PersistedAppInfo;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v2

    .line 1435
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->a()Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 1436
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v4

    .line 1440
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    .line 1441
    if-eqz v9, :cond_141

    if-ne v9, v2, :cond_141

    .line 1443
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Target version: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " of application: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " is already installed."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1447
    invoke-direct {p0, v10, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_d9
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_d9} :catch_2bf
    .catchall {:try_start_7e .. :try_end_d9} :catchall_2ad

    .line 1568
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto :goto_63

    .line 1416
    :catchall_dd
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    :goto_e0
    :try_start_e0
    monitor-exit p0

    throw v1
    :try_end_e2
    .catch Ljava/lang/Throwable; {:try_start_e0 .. :try_end_e2} :catch_e2
    .catchall {:try_start_e0 .. :try_end_e2} :catchall_2ad

    .line 1512
    :catch_e2
    move-exception v1

    move-object v5, v2

    move-object v2, v1

    move-object v14, v3

    move v3, v6

    move-object v6, v4

    move-object v4, v14

    .line 1513
    :goto_e9
    :try_start_e9
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Install of package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " failed with exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8, v2}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_103
    .catchall {:try_start_e9 .. :try_end_103} :catchall_233

    .line 1515
    if-eqz v11, :cond_10e

    .line 1522
    const/4 v1, 0x1

    const/4 v8, 0x0

    :try_start_107
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v1, v8, v10, v9}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_10e
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_10e} :catch_216
    .catchall {:try_start_107 .. :try_end_10e} :catchall_233

    .line 1531
    :cond_10e
    :goto_10e
    :try_start_10e
    instance-of v1, v2, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v1, :cond_239

    move-object v0, v2

    check-cast v0, Lcom/absolute/android/persistservice/DownloadApkException;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/DownloadApkException;->a()Z

    move-result v1

    if-ne v1, v7, :cond_239

    .line 1532
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "The download and install of APK for package: "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " will not be re-tried as the exception was considered fatal."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 1534
    invoke-direct {p0, v10, v6, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_139
    .catchall {:try_start_10e .. :try_end_139} :catchall_233

    .line 1568
    :cond_139
    :goto_139
    invoke-direct {p0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto/16 :goto_63

    :cond_13e
    move v8, v5

    .line 1422
    goto/16 :goto_96

    :cond_141
    move-object v5, v1

    move v1, v7

    .line 1453
    :goto_143
    :try_start_143
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v8

    if-ne v8, v7, :cond_14d

    .line 1454
    invoke-direct {p0, v10, v2, v4, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;
    :try_end_14c
    .catch Ljava/lang/Throwable; {:try_start_143 .. :try_end_14c} :catch_2c6
    .catchall {:try_start_143 .. :try_end_14c} :catchall_2ad

    move-result-object v4

    .line 1458
    :cond_14d
    :try_start_14d
    const-string v1, "SHA256"

    invoke-static {v1, v4}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_14d .. :try_end_152} :catch_1dd
    .catchall {:try_start_14d .. :try_end_152} :catchall_2ad

    move-result-object v1

    .line 1468
    :goto_153
    if-eqz v9, :cond_15a

    .line 1469
    :try_start_155
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v8, v10}, Lcom/absolute/android/persistservice/o;->b(Ljava/lang/String;)V

    .line 1472
    :cond_15a
    invoke-direct {p0, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15d
    .catch Ljava/lang/Throwable; {:try_start_155 .. :try_end_15d} :catch_2c6
    .catchall {:try_start_155 .. :try_end_15d} :catchall_2ad

    move-result-object v3

    .line 1475
    const/4 v8, 0x0

    :try_start_15f
    invoke-direct {p0, v10, v3, v2, v8}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1479
    invoke-direct {p0, v10, v2, v5, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1481
    monitor-enter p0
    :try_end_167
    .catch Ljava/lang/Throwable; {:try_start_15f .. :try_end_167} :catch_20e
    .catchall {:try_start_15f .. :try_end_167} :catchall_2ad

    .line 1483
    :try_start_167
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v5}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 1488
    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v2

    if-ne v2, v7, :cond_203

    .line 1489
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v10}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1490
    if-eqz v2, :cond_18e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_18e

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_18e

    .line 1491
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 1493
    :cond_18e
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v10, v4, v1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    :goto_193
    monitor-exit p0
    :try_end_194
    .catchall {:try_start_167 .. :try_end_194} :catchall_20b

    .line 1502
    :try_start_194
    invoke-direct {p0, v10, v11}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1505
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v8, "Successfully installed package: "

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ". Version = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", persisted = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, ", monitored = "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1510
    invoke-direct {p0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_1d8
    .catch Ljava/lang/Throwable; {:try_start_194 .. :try_end_1d8} :catch_20e
    .catchall {:try_start_194 .. :try_end_1d8} :catchall_2ad

    .line 1568
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto/16 :goto_63

    .line 1462
    :catch_1dd
    move-exception v1

    .line 1463
    :try_start_1de
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Failed to get Digest for APK: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", algorithm: , exception : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_200
    .catch Ljava/lang/Throwable; {:try_start_1de .. :try_end_200} :catch_2c6
    .catchall {:try_start_1de .. :try_end_200} :catchall_2ad

    move-object v1, v3

    goto/16 :goto_153

    .line 1497
    :cond_203
    :try_start_203
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {v1, v10, v2, v8}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20a
    .catchall {:try_start_203 .. :try_end_20a} :catchall_20b

    goto :goto_193

    .line 1499
    :catchall_20b
    move-exception v1

    :try_start_20c
    monitor-exit p0

    throw v1
    :try_end_20e
    .catch Ljava/lang/Throwable; {:try_start_20c .. :try_end_20e} :catch_20e
    .catchall {:try_start_20c .. :try_end_20e} :catchall_2ad

    .line 1512
    :catch_20e
    move-exception v2

    move v14, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v14

    goto/16 :goto_e9

    .line 1524
    :catch_216
    move-exception v1

    .line 1525
    :try_start_217
    iget-object v8, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v11, "Got exception invoking  IABTResultReceiver.onOperationResult() for failed install of package: "

    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " Exception: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_231
    .catchall {:try_start_217 .. :try_end_231} :catchall_233

    goto/16 :goto_10e

    .line 1568
    :catchall_233
    move-exception v1

    move-object v3, v4

    :goto_235
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    throw v1

    .line 1536
    :cond_239
    :try_start_239
    instance-of v1, v2, Lcom/absolute/android/persistservice/DownloadApkException;

    if-eqz v1, :cond_2a8

    .line 1537
    check-cast v2, Lcom/absolute/android/persistservice/DownloadApkException;

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/DownloadApkException;->b()Z

    move-result v1

    if-ne v1, v7, :cond_276

    .line 1541
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Download of APK for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " will be re-tried when connectivity is available."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1544
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_262
    .catchall {:try_start_239 .. :try_end_262} :catchall_233

    .line 1545
    :try_start_262
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1546
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->S:Lcom/absolute/android/persistservice/d;

    invoke-static {v1}, Lcom/absolute/android/persistservice/d;->a(Lcom/absolute/android/persistservice/d;)V

    .line 1547
    monitor-exit v2
    :try_end_271
    .catchall {:try_start_262 .. :try_end_271} :catchall_273

    goto/16 :goto_139

    :catchall_273
    move-exception v1

    :try_start_274
    monitor-exit v2

    throw v1

    .line 1552
    :cond_276
    if-eqz v6, :cond_139

    .line 1553
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v1

    .line 1555
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Scheduling re-try of update/install of package: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " minutes"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1559
    const/4 v2, 0x0

    mul-int/lit8 v1, v1, 0x3c

    invoke-direct {p0, v10, v2, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    goto/16 :goto_139

    .line 1564
    :cond_2a8
    invoke-direct {p0, v10, v6, v5, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    :try_end_2ab
    .catchall {:try_start_274 .. :try_end_2ab} :catchall_233

    goto/16 :goto_139

    .line 1568
    :catchall_2ad
    move-exception v1

    goto :goto_235

    .line 1512
    :catch_2af
    move-exception v2

    move-object v4, v3

    move-object v6, v3

    move-object v14, v3

    move v3, v5

    move-object v5, v14

    goto/16 :goto_e9

    :catch_2b7
    move-exception v2

    move-object v4, v3

    move-object v5, v3

    move v14, v6

    move-object v6, v3

    move v3, v14

    goto/16 :goto_e9

    :catch_2bf
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move v3, v6

    move-object v6, v1

    goto/16 :goto_e9

    :catch_2c6
    move-exception v2

    move v14, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v3

    move v3, v14

    goto/16 :goto_e9

    .line 1416
    :catchall_2ce
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_e0

    :catchall_2d4
    move-exception v2

    move-object v14, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v14

    goto/16 :goto_e0

    :cond_2db
    move v14, v5

    move-object v5, v1

    move v1, v14

    goto/16 :goto_143
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2428
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v1

    or-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V

    .line 2429
    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .registers 7

    .prologue
    .line 1243
    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/absolute/android/persistservice/j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1244
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1245
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    mul-int/lit16 v2, p2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/l;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 1246
    monitor-exit p0

    return-void

    .line 1243
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Z)V
    .registers 9

    .prologue
    .line 2195
    if-eqz p2, :cond_19

    .line 2196
    :try_start_2
    invoke-virtual {p2}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 2197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_19} :catch_28

    .line 2205
    :cond_19
    :goto_19
    monitor-enter p0

    .line 2206
    :try_start_1a
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2208
    if-eqz p4, :cond_56

    .line 2209
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2215
    :goto_26
    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1a .. :try_end_27} :catchall_63

    return-void

    .line 2200
    :catch_28
    move-exception v0

    .line 2201
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to delete APK file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    goto :goto_19

    .line 2212
    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 2213
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_63

    goto :goto_26

    .line 2215
    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 6

    .prologue
    .line 1214
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v0

    .line 1215
    and-int/lit8 v0, v0, -0x2

    .line 1216
    or-int/lit8 v0, v0, 0x2

    .line 1217
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, p1, v0}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V

    .line 1219
    new-instance v0, Lcom/absolute/android/persistservice/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1220
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1221
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/l;->sendMessage(Landroid/os/Message;)Z
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_23

    .line 1222
    monitor-exit p0

    return-void

    .line 1214
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    .registers 8

    .prologue
    .line 1191
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v0

    .line 1192
    and-int/lit8 v0, v0, -0x3

    .line 1193
    and-int/lit8 v0, v0, -0x9

    .line 1194
    or-int/lit8 v0, v0, 0x1

    .line 1195
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, p1, v0}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V

    .line 1197
    new-instance v0, Lcom/absolute/android/persistservice/j;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/j;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 1198
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/l;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1199
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->O:Lcom/absolute/android/persistservice/l;

    mul-int/lit16 v2, p3, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/absolute/android/persistservice/l;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 1200
    monitor-exit p0

    return-void

    .line 1191
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 16

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 2459
    .line 2465
    :try_start_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_f} :catch_26f
    .catchall {:try_start_3 .. :try_end_f} :catchall_26b

    move-result v1

    .line 2470
    if-eqz v1, :cond_2a

    .line 2472
    :try_start_12
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2474
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 2481
    :cond_2a
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v3, "com.absolute.android.persistservice.ABTPackageInstallObserver"

    invoke-virtual {v0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 2483
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    .line 2485
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 2486
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 2487
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/net/Uri;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-string v8, "android.content.pm.IPackageInstallObserver"

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    .line 2492
    const-string v6, "installPackage"

    invoke-virtual {v4, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 2494
    iget-object v5, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "invoking installPackage() for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    .line 2496
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2498
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    monitor-enter v4
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_a3} :catch_16d
    .catchall {:try_start_12 .. :try_end_a3} :catchall_19d

    .line 2500
    :try_start_a3
    const-string v0, "getFinished"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2502
    :goto_ac
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_ba
    .catchall {:try_start_a3 .. :try_end_ba} :catchall_16a

    move-result v0

    if-nez v0, :cond_1c5

    .line 2505
    :try_start_bd
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "waiting on installPackage() completion for: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    .line 2507
    if-lez v2, :cond_1ba

    .line 2509
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)I

    move-result v0

    if-ne v0, p3, :cond_128

    .line 2510
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installPackage() timed out, but completed for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_102} :catch_147
    .catchall {:try_start_bd .. :try_end_102} :catchall_16a

    .line 2512
    :try_start_102
    monitor-exit v4
    :try_end_103
    .catchall {:try_start_102 .. :try_end_103} :catchall_16a

    .line 2561
    iput-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    .line 2564
    if-eqz v1, :cond_11e

    .line 2566
    :try_start_107
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2568
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_11e
    .catch Ljava/lang/Throwable; {:try_start_107 .. :try_end_11e} :catch_11f

    .line 2576
    :cond_11e
    :goto_11e
    return-void

    .line 2574
    :catch_11f
    move-exception v0

    .line 2575
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "Failed to re-enable package verification, exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11e

    .line 2514
    :cond_128
    :try_start_128
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.installPackage() timed out for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_147
    .catch Ljava/lang/InterruptedException; {:try_start_128 .. :try_end_147} :catch_147
    .catchall {:try_start_128 .. :try_end_147} :catchall_16a

    .line 2523
    :catch_147
    move-exception v0

    .line 2524
    :try_start_148
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "installPackage() for package "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " got interrupted exception: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2525
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invocation of PackageManager.installPackage() was interrupted"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2549
    :catchall_16a
    move-exception v0

    monitor-exit v4
    :try_end_16c
    .catchall {:try_start_148 .. :try_end_16c} :catchall_16a

    :try_start_16c
    throw v0
    :try_end_16d
    .catch Ljava/lang/Throwable; {:try_start_16c .. :try_end_16d} :catch_16d
    .catchall {:try_start_16c .. :try_end_16d} :catchall_19d

    .line 2550
    :catch_16d
    move-exception v0

    .line 2551
    :goto_16e
    :try_start_16e
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 2552
    const-string v2, "null"

    .line 2553
    if-eqz v3, :cond_17a

    .line 2554
    invoke-static {v3}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 2556
    :cond_17a
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Invocation of PackageManager.installPackage() threw exception : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", cause: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_19d
    .catchall {:try_start_16e .. :try_end_19d} :catchall_19d

    .line 2561
    :catchall_19d
    move-exception v0

    :goto_19e
    iput-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    .line 2564
    if-eqz v1, :cond_1b9

    .line 2566
    :try_start_1a2
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2568
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_1b9
    .catch Ljava/lang/Throwable; {:try_start_1a2 .. :try_end_1b9} :catch_261

    .line 2576
    :cond_1b9
    :goto_1b9
    throw v0

    .line 2520
    :cond_1ba
    add-int/lit8 v2, v2, 0x1

    .line 2521
    :try_start_1bc
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1c3
    .catch Ljava/lang/InterruptedException; {:try_start_1bc .. :try_end_1c3} :catch_147
    .catchall {:try_start_1bc .. :try_end_1c3} :catchall_16a

    goto/16 :goto_ac

    .line 2530
    :cond_1c5
    :try_start_1c5
    const-string v0, "getResult"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2531
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2532
    if-ne v0, v10, :cond_238

    .line 2533
    if-eqz p4, :cond_1fc

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)I

    move-result v0

    if-eq v0, p3, :cond_1fc

    .line 2537
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invocation of PackageManager.installPackage() completed, but not for target version: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2541
    :cond_1fc
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "installPackage() completed successfully for: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    .line 2542
    monitor-exit v4
    :try_end_211
    .catchall {:try_start_1c5 .. :try_end_211} :catchall_16a

    .line 2561
    iput-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->X:Ljava/lang/Object;

    .line 2564
    if-eqz v1, :cond_11e

    .line 2566
    :try_start_215
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2568
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/absolute/android/persistservice/ABTPersistenceService;->G:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_22c
    .catch Ljava/lang/Throwable; {:try_start_215 .. :try_end_22c} :catch_22e

    goto/16 :goto_11e

    .line 2574
    :catch_22e
    move-exception v0

    .line 2575
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "Failed to re-enable package verification, exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11e

    .line 2545
    :cond_238
    :try_start_238
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Invocation of PackageManager.installPackage() failed with result: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_261
    .catchall {:try_start_238 .. :try_end_261} :catchall_16a

    .line 2574
    :catch_261
    move-exception v1

    .line 2575
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v3, "Failed to re-enable package verification, exception: "

    invoke-virtual {v2, v3, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b9

    .line 2561
    :catchall_26b
    move-exception v0

    move v1, v2

    goto/16 :goto_19e

    .line 2550
    :catch_26f
    move-exception v0

    move v1, v2

    goto/16 :goto_16e
.end method

.method private declared-synchronized a(Z)V
    .registers 15

    .prologue
    .line 2803
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v4

    .line 2804
    if-eqz v4, :cond_ef

    .line 2806
    array-length v5, v4

    const/4 v0, 0x0

    move v3, v0

    :goto_c
    if-ge v3, v5, :cond_ef

    aget-object v6, v4, v3

    .line 2807
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 2808
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v8

    .line 2810
    invoke-direct {p0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v8, :cond_bd

    const/4 v0, 0x1

    move v2, v0

    .line 2814
    :goto_20
    if-eqz p1, :cond_31

    const/4 v0, 0x1

    if-ne v2, v0, :cond_31

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2815
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v6, v1}, Lcom/absolute/android/persistservice/o;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 2821
    :cond_31
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v7}, Lcom/absolute/android/persistservice/n;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_36} :catch_e6
    .catchall {:try_start_1 .. :try_end_36} :catchall_118

    move-result-object v9

    .line 2822
    const/4 v1, 0x0

    .line 2824
    :try_start_38
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    const/4 v10, 0x1

    if-ne v0, v10, :cond_54

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_54

    .line 2825
    invoke-virtual {v9}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v1

    .line 2826
    const-string v0, "SHA256"

    invoke-static {v0, v1}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2830
    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v10, v7, v1, v0}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_54} :catch_c1
    .catchall {:try_start_38 .. :try_end_54} :catchall_118

    .line 2841
    :cond_54
    :goto_54
    const/4 v0, 0x0

    .line 2842
    if-eqz v9, :cond_f1

    :try_start_57
    invoke-virtual {v9}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v1

    .line 2844
    :goto_5b
    if-nez v2, :cond_95

    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/aa;->a()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_95

    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_95

    and-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_95

    invoke-direct {p0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)I

    move-result v9

    if-ge v9, v8, :cond_95

    .line 2849
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Persisted package: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has been removed (possibly due to factory reset). Initiating recovery re-installation."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2853
    invoke-direct {p0, v7, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2856
    :cond_95
    if-nez v0, :cond_fb

    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_fb

    .line 2858
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Resuming installation of package: "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2861
    const/4 v0, 0x0

    .line 2862
    if-eqz p1, :cond_f4

    const/16 v0, 0x14

    .line 2865
    :cond_b4
    :goto_b4
    const/4 v1, 0x0

    invoke-direct {p0, v7, v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    .line 2806
    :cond_b8
    :goto_b8
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto/16 :goto_c

    .line 2810
    :cond_bd
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_20

    .line 2832
    :catch_c1
    move-exception v0

    .line 2833
    iget-object v10, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Failed to get Digest for APK: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, ", algorithm: , exception : "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_e4
    .catch Ljava/lang/Throwable; {:try_start_57 .. :try_end_e4} :catch_e6
    .catchall {:try_start_57 .. :try_end_e4} :catchall_118

    goto/16 :goto_54

    .line 2887
    :catch_e6
    move-exception v0

    .line 2888
    :try_start_e7
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string/jumbo v2, "recoverAndCompletePendingOperations() got exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ef
    .catchall {:try_start_e7 .. :try_end_ef} :catchall_118

    .line 2890
    :cond_ef
    monitor-exit p0

    return-void

    .line 2842
    :cond_f1
    const/4 v1, 0x0

    goto/16 :goto_5b

    .line 2863
    :cond_f4
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b4

    const/16 v0, 0x14

    goto :goto_b4

    .line 2867
    :cond_fb
    and-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_11b

    .line 2869
    :try_start_ff
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Resuming uninstallation of package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2872
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_117
    .catch Ljava/lang/Throwable; {:try_start_ff .. :try_end_117} :catch_e6
    .catchall {:try_start_ff .. :try_end_117} :catchall_118

    goto :goto_b8

    .line 2803
    :catchall_118
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2877
    :cond_11b
    if-nez v2, :cond_b8

    :try_start_11d
    invoke-virtual {v6}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v0

    if-nez v0, :cond_b8

    .line 2879
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-persisted package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed (possibly due to factory reset). Cleaning up to remove AppProfile and APK."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2883
    invoke-direct {p0, v7}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V
    :try_end_140
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_140} :catch_e6
    .catchall {:try_start_11d .. :try_end_140} :catchall_118

    goto/16 :goto_b8
.end method

.method private a(Ljava/lang/String;Z)Z
    .registers 12

    .prologue
    const/16 v4, 0x14

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2958
    .line 2966
    :try_start_4
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/n;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v2

    .line 2967
    if-eqz v2, :cond_f0

    .line 2968
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v5

    .line 2969
    if-eqz v5, :cond_fa

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_fa

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_20} :catch_e8

    move-result v3

    if-eqz v3, :cond_fa

    .line 2971
    :try_start_23
    invoke-virtual {v2}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SHA256"

    invoke-static {v3, v5}, Lcom/absolute/android/crypt/Crypt;->getDigest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_30} :catch_c2

    move-result v2

    if-eqz v2, :cond_a6

    .line 2974
    :try_start_33
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Recovering package "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " using local APK: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2976
    if-eqz p2, :cond_a4

    move v2, v4

    :goto_54
    invoke-direct {p0, p1, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_57} :catch_f7

    move v3, v0

    .line 2986
    :goto_58
    if-nez v3, :cond_f0

    .line 2988
    :try_start_5a
    monitor-enter p0
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5b} :catch_e8

    .line 2991
    :try_start_5b
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    if-nez v2, :cond_77

    .line 2992
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v3, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 2994
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2997
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 2999
    :cond_77
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_5b .. :try_end_78} :catchall_f2

    .line 3000
    if-eqz p2, :cond_f5

    move v2, v4

    .line 3002
    :goto_7b
    :try_start_7b
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovering package "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds by querying server, since there is no local APK."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 3006
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_7b .. :try_end_a3} :catch_e8

    .line 3014
    :goto_a3
    return v0

    :cond_a4
    move v2, v1

    .line 2976
    goto :goto_54

    .line 2979
    :cond_a6
    :try_start_a6
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "Digital signature of APK: "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " is invalid."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_a6 .. :try_end_c0} :catch_c2

    move v3, v1

    .line 2983
    goto :goto_58

    .line 2981
    :catch_c2
    move-exception v2

    move v3, v1

    .line 2982
    :goto_c4
    :try_start_c4
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to validate digital signature of APK: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Got exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_e6} :catch_e8

    goto/16 :goto_58

    .line 3010
    :catch_e8
    move-exception v0

    .line 3011
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v3, "initiateRecovery() got exception: "

    invoke-virtual {v2, v3, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f0
    move v0, v1

    goto :goto_a3

    .line 2999
    :catchall_f2
    move-exception v0

    :try_start_f3
    monitor-exit p0

    throw v0
    :try_end_f5
    .catch Ljava/lang/Throwable; {:try_start_f3 .. :try_end_f5} :catch_e8

    :cond_f5
    move v2, v1

    .line 3000
    goto :goto_7b

    .line 2981
    :catch_f7
    move-exception v2

    move v3, v0

    goto :goto_c4

    :cond_fa
    move v3, v1

    goto/16 :goto_58
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/n;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->E:Ljava/lang/String;

    return-object v0
.end method

.method private static b(I)Ljava/lang/String;
    .registers 8

    .prologue
    .line 3180
    const-string/jumbo v1, "unknown"

    .line 3181
    const-class v0, Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 3182
    array-length v4, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_c
    if-ge v2, v4, :cond_49

    aget-object v5, v3, v2

    .line 3183
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, v6, :cond_45

    .line 3184
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 3186
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_45

    and-int/lit8 v6, v0, 0x1

    if-eqz v6, :cond_45

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_45

    .line 3189
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3190
    const-string v6, "INSTALL_FAILED_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3c

    const-string v6, "INSTALL_PARSE_FAILED_"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 3194
    :cond_3c
    const/4 v6, 0x0

    :try_start_3d
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_40} :catch_44

    move-result v5

    if-ne p0, v5, :cond_45

    .line 3205
    :goto_43
    return-object v0

    :catch_44
    move-exception v0

    .line 3182
    :cond_45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_49
    move-object v0, v1

    goto :goto_43
.end method

.method private static b(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .prologue
    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1364
    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V
    .registers 8

    .prologue
    .line 67
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    :try_start_14
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;)V

    :cond_45
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_94

    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_94

    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_94

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete persisted file directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_94} :catch_cd

    :cond_94
    if-eqz v2, :cond_9c

    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_99
    invoke-interface {v2, v0, v3, v1, v4}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_b1

    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully uninstalled package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    :cond_b0
    :goto_b0
    return-void

    :catch_b1
    move-exception v0

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got exception invoking  IABTResultReceiver.onOperationResult() for successful uninstall of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_cc} :catch_cd

    goto :goto_9c

    :catch_cd
    move-exception v0

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uninstall of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v2, :cond_b0

    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_ec
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f3} :catch_f4

    goto :goto_b0

    :catch_f4
    move-exception v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onOperationResult() for failed uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0
.end method

.method private b(Lcom/absolute/android/persistservice/j;)V
    .registers 8

    .prologue
    .line 1649
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1650
    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v1

    .line 1651
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->b(Lcom/absolute/android/persistservice/j;)Lcom/absolute/android/persistence/IABTResultReceiver;

    move-result-object v2

    .line 1657
    :try_start_14
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Starting uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;)V

    .line 1664
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v0

    .line 1672
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1673
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v3, v1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d(Ljava/lang/String;)V

    .line 1675
    :cond_45
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    .line 1679
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_94

    .line 1680
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_94

    .line 1685
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_94

    .line 1686
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete persisted file directory: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for package: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_94} :catch_cd

    .line 1693
    :cond_94
    if-eqz v2, :cond_9c

    .line 1699
    const/4 v0, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_99
    invoke-interface {v2, v0, v3, v1, v4}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_b1

    .line 1708
    :cond_9c
    :goto_9c
    :try_start_9c
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully uninstalled package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 1729
    :cond_b0
    :goto_b0
    return-void

    .line 1701
    :catch_b1
    move-exception v0

    .line 1702
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got exception invoking  IABTResultReceiver.onOperationResult() for successful uninstall of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_9c .. :try_end_cc} :catch_cd

    goto :goto_9c

    .line 1711
    :catch_cd
    move-exception v0

    .line 1712
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Uninstall of "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed with exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1714
    if-eqz v2, :cond_b0

    .line 1720
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_ec
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v1, v0}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Throwable; {:try_start_ec .. :try_end_f3} :catch_f4

    goto :goto_b0

    .line 1722
    :catch_f4
    move-exception v0

    .line 1723
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got exception invoking IABTResultReceiver.onOperationResult() for failed uninstall of package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b0
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 2437
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V

    .line 2438
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 7

    .prologue
    .line 2156
    monitor-enter p0

    .line 2157
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 2158
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 2159
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V

    .line 2160
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_1c

    .line 2163
    if-eqz p2, :cond_1b

    .line 2169
    const/4 v0, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_18
    invoke-interface {p2, v0, v1, p1, v2}, Lcom/absolute/android/persistence/IABTResultReceiver;->onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_1b} :catch_1f

    .line 2177
    :cond_1b
    :goto_1b
    return-void

    .line 2160
    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    .line 2171
    :catch_1f
    move-exception v0

    .line 2172
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got exception invoking IABTResultReceiver.onOperationResult() for successful install of package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1b
.end method

.method private declared-synchronized b(Z)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 2902
    monitor-enter p0

    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 2903
    if-eqz v3, :cond_7b

    .line 2905
    array-length v4, v3

    move v2, v1

    :goto_c
    if-ge v2, v4, :cond_7b

    aget-object v0, v3, v2

    .line 2906
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2907
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v6, v5}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v6

    .line 2914
    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v7}, Lcom/absolute/android/persistservice/aa;->a()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6d

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v7

    if-lez v7, :cond_6d

    and-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6d

    .line 2919
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 2929
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    iget-object v7, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v7, v5}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 2930
    invoke-direct {p0, v5}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 2931
    if-eqz p1, :cond_71

    const/16 v0, 0x14

    .line 2933
    :goto_45
    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Initiating install request for package: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " secs"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 2936
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_6d} :catch_73
    .catchall {:try_start_2 .. :try_end_6d} :catchall_7d

    .line 2905
    :cond_6d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_71
    move v0, v1

    .line 2931
    goto :goto_45

    .line 2940
    :catch_73
    move-exception v0

    .line 2941
    :try_start_74
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "handleFirmwareUpdate() got exception: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7b
    .catchall {:try_start_74 .. :try_end_7b} :catchall_7d

    .line 2943
    :cond_7b
    monitor-exit p0

    return-void

    .line 2902
    :catchall_7d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->F:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2592
    const-string v2, ""

    .line 2596
    :try_start_4
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2597
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2598
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2599
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2600
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 2601
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 2604
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v6}, Ljava/io/File;->canExecute()Z

    move-result v7

    if-nez v7, :cond_5a

    .line 2605
    :cond_40
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2606
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2611
    :cond_5a
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_63

    .line 2612
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 2614
    :cond_63
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 2616
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2617
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2625
    const/16 v7, 0x2000

    new-array v7, v7, [B

    .line 2627
    :goto_74
    invoke-virtual {v5, v7}, Ljava/io/FileInputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_be

    .line 2628
    const/4 v9, 0x0

    invoke-virtual {v4, v7, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_7e
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7e} :catch_7f

    goto :goto_74

    .line 2633
    :catch_7f
    move-exception v0

    move-object v1, v2

    .line 2634
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to copy APK: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " got exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2636
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to copy APK to install directory. Got exception : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2630
    :cond_be
    :try_start_be
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 2631
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_c4
    .catch Ljava/lang/Throwable; {:try_start_be .. :try_end_c4} :catch_7f

    .line 2644
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_c6
    invoke-virtual {v6, v4, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2645
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_ce
    .catch Ljava/lang/Throwable; {:try_start_c6 .. :try_end_ce} :catch_ee

    move-result v3

    if-nez v3, :cond_10b

    .line 2654
    :goto_d1
    if-eqz v0, :cond_10a

    .line 2655
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Set permission of APK file: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to readable failed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2649
    :catch_ee
    move-exception v1

    .line 2650
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to set file permissions of APK: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " got exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d1

    .line 2659
    :cond_10a
    return-object v2

    :cond_10b
    move v0, v1

    goto :goto_d1
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V
    .registers 9

    .prologue
    .line 67
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_12} :catch_37
    .catchall {:try_start_11 .. :try_end_12} :catchall_5d

    :try_start_12
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v3, v2}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_34

    if-eqz v1, :cond_30

    :try_start_21
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_37
    .catchall {:try_start_21 .. :try_end_24} :catchall_5d

    move-result-object v0

    :try_start_25
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_30} :catch_6c
    .catchall {:try_start_25 .. :try_end_30} :catchall_65

    :cond_30
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    :goto_33
    return-void

    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit p0

    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_37} :catch_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_5d

    :catch_37
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovery of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Re-trying in 5 secs. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x5

    invoke-direct {p0, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_6a

    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto :goto_33

    :catchall_5d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_61
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    throw v0

    :catchall_65
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_61

    :catchall_6a
    move-exception v0

    goto :goto_61

    :catch_6c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3b
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->h(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/absolute/android/persistservice/j;)V
    .registers 9

    .prologue
    .line 1814
    sget-boolean v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->m:Z

    if-nez v0, :cond_c

    if-nez p1, :cond_c

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1815
    :cond_c
    invoke-static {p1}, Lcom/absolute/android/persistservice/j;->a(Lcom/absolute/android/persistservice/j;)Ljava/lang/String;

    move-result-object v2

    .line 1819
    const/4 v0, 0x0

    .line 1821
    :try_start_11
    monitor-enter p0
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_12} :catch_37
    .catchall {:try_start_11 .. :try_end_12} :catchall_5d

    .line 1822
    :try_start_12
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 1823
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v3, v2}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1824
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_34

    .line 1826
    if-eqz v1, :cond_30

    .line 1827
    :try_start_21
    invoke-direct {p0, v3}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Ljava/lang/String;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_24} :catch_37
    .catchall {:try_start_21 .. :try_end_24} :catchall_5d

    move-result-object v0

    .line 1831
    :try_start_25
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {p0, v2, v0, v3, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 1834
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_30} :catch_6c
    .catchall {:try_start_25 .. :try_end_30} :catchall_65

    .line 1843
    :cond_30
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    .line 1844
    :goto_33
    return-void

    .line 1824
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit p0

    throw v1
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_37} :catch_37
    .catchall {:try_start_35 .. :try_end_37} :catchall_5d

    .line 1837
    :catch_37
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 1838
    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Recovery of package: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed. Re-trying in 5 secs. Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1840
    const/4 v0, 0x5

    invoke-direct {p0, v2, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;I)V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_6a

    .line 1843
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    goto :goto_33

    :catchall_5d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_61
    invoke-direct {p0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->i(Ljava/lang/String;)V

    throw v0

    :catchall_65
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_61

    :catchall_6a
    move-exception v0

    goto :goto_61

    .line 1837
    :catch_6c
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_3b
.end method

.method private static d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "com.absolute.persistence"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 67
    const/4 v0, 0x0

    const/16 v1, 0x14

    invoke-direct {p0, p1, v0, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v0, 0x0

    .line 2718
    :try_start_3
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.absolute.android.persistservice.ABTPackageDeleteObserver"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2721
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    .line 2723
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 2724
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2725
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "android.content.pm.IPackageDeleteObserver"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    .line 2729
    const-string v5, "deletePackage"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 2732
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "invoking deletePackage() for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    .line 2734
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2736
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6a} :catch_ff
    .catchall {:try_start_3 .. :try_end_6a} :catchall_12f

    .line 2738
    :try_start_6a
    const-string v1, "getFinished"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    move v1, v0

    .line 2740
    :goto_74
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_82
    .catchall {:try_start_6a .. :try_end_82} :catchall_fc

    move-result v0

    if-nez v0, :cond_13f

    .line 2743
    :try_start_85
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "waiting on deletePackage() completion for: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    .line 2745
    if-lez v1, :cond_133

    .line 2747
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->f(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c4

    .line 2748
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deletePackage() timed out, but completed for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/InterruptedException; {:try_start_85 .. :try_end_c0} :catch_d9
    .catchall {:try_start_85 .. :try_end_c0} :catchall_fc

    .line 2749
    :try_start_c0
    monitor-exit v3
    :try_end_c1
    .catchall {:try_start_c0 .. :try_end_c1} :catchall_fc

    .line 2789
    iput-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    :goto_c3
    return-void

    .line 2751
    :cond_c4
    :try_start_c4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invocation of PackageManager.deletePackage() timed out for package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d9
    .catch Ljava/lang/InterruptedException; {:try_start_c4 .. :try_end_d9} :catch_d9
    .catchall {:try_start_c4 .. :try_end_d9} :catchall_fc

    .line 2760
    :catch_d9
    move-exception v0

    .line 2761
    :try_start_da
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "deletePackage() for package "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " got interrupted exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2762
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Invocation of PackageManager.deletePackage() was interrupted"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2777
    :catchall_fc
    move-exception v0

    monitor-exit v3
    :try_end_fe
    .catchall {:try_start_da .. :try_end_fe} :catchall_fc

    :try_start_fe
    throw v0
    :try_end_ff
    .catch Ljava/lang/Throwable; {:try_start_fe .. :try_end_ff} :catch_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_12f

    .line 2778
    :catch_ff
    move-exception v0

    .line 2779
    :try_start_100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 2780
    const-string v1, "null"

    .line 2781
    if-eqz v2, :cond_10c

    .line 2782
    invoke-static {v2}, Lcom/absolute/android/utils/ExceptionUtil;->getExceptionMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 2784
    :cond_10c
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invocation of PackageManager.deletePackage() threw exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", cause: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_12f
    .catchall {:try_start_100 .. :try_end_12f} :catchall_12f

    .line 2789
    :catchall_12f
    move-exception v0

    iput-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    throw v0

    .line 2757
    :cond_133
    add-int/lit8 v0, v1, 0x1

    .line 2758
    :try_start_135
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    const-wide/16 v6, 0x4e20

    invoke-virtual {v1, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_13c
    .catch Ljava/lang/InterruptedException; {:try_start_135 .. :try_end_13c} :catch_d9
    .catchall {:try_start_135 .. :try_end_13c} :catchall_fc

    move v1, v0

    .line 2764
    goto/16 :goto_74

    .line 2766
    :cond_13f
    :try_start_13f
    const-string v0, "getResult"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 2767
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2768
    if-ne v0, v8, :cond_172

    .line 2770
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "deletePackage() completed successfully for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->d(Ljava/lang/String;)V

    .line 2772
    monitor-exit v3
    :try_end_16e
    .catchall {:try_start_13f .. :try_end_16e} :catchall_fc

    .line 2789
    iput-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Y:Ljava/lang/Object;

    goto/16 :goto_c3

    .line 2774
    :cond_172
    :try_start_172
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Invocation of PackageManager.deletePackage() failed with result: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_187
    .catchall {:try_start_172 .. :try_end_187} :catchall_fc
.end method

.method private static e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    return-void
.end method

.method private e(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3026
    .line 3027
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3029
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3030
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_12

    .line 3034
    :goto_e
    if-eqz v1, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    :catch_12
    move-exception v1

    move v1, v0

    goto :goto_e
.end method

.method private f(Ljava/lang/String;)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 3046
    .line 3047
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 3049
    const/4 v2, 0x0

    :try_start_8
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 3050
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_e} :catch_f

    .line 3053
    :goto_e
    return v0

    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/o;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/aa;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    return-object v0
.end method

.method private g()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 1132
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1134
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 1136
    array-length v5, v4

    move v2, v1

    :goto_12
    if-ge v2, v5, :cond_50

    aget-object v0, v4, v2

    .line 1137
    const/16 v6, 0x40

    invoke-virtual {v3, v0, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v6

    move v0, v1

    :goto_20
    if-ge v0, v7, :cond_34

    aget-object v8, v6, v0

    .line 1141
    iget-object v9, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->J:Ljava/util/Hashtable;

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_31

    .line 1158
    :cond_30
    return v10

    .line 1137
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 1154
    :cond_34
    const-string v0, "android.uid.system:1000"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_41
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_41} :catch_48

    move-result v0

    if-nez v0, :cond_30

    .line 1136
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_12

    .line 1167
    :catch_48
    move-exception v0

    .line 1168
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "Unable to get Package for calling UID. Denying access."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1174
    :cond_50
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Not authorized to access ABT Persistence Service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 3067
    .line 3070
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3071
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 3073
    if-eqz v2, :cond_22

    .line 3074
    array-length v3, v2

    move v1, v0

    :goto_13
    if-ge v1, v3, :cond_1e

    aget-object v4, v2, v1

    .line 3075
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 3076
    const/4 v0, 0x1

    .line 3089
    :cond_1e
    return v0

    .line 3074
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 3082
    :cond_22
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkIsCallingPackage() for package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed. Unable to get calling packages for UID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3085
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3086
    throw v0
.end method

.method static synthetic h(Lcom/absolute/android/persistservice/ABTPersistenceService;)Ljava/util/HashSet;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->U:Ljava/util/HashSet;

    return-object v0
.end method

.method private h()V
    .registers 7

    .prologue
    .line 3099
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 3100
    if-eqz v1, :cond_49

    .line 3101
    array-length v2, v1

    const/4 v0, 0x0

    :goto_a
    if-ge v0, v2, :cond_49

    aget-object v3, v1, v0

    .line 3102
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3106
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3107
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_28

    .line 3108
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3110
    :cond_28
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->N:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4, v3}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2d} :catch_30

    .line 3101
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3113
    :catch_30
    move-exception v0

    .line 3114
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to clean up fallbacks, got exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V

    .line 3116
    :cond_49
    return-void
.end method

.method private declared-synchronized h(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 3129
    monitor-enter p0

    const/4 v1, 0x0

    .line 3131
    :try_start_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3132
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 3133
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    .line 3134
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_22

    .line 3135
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_22} :catch_24
    .catchall {:try_start_2 .. :try_end_22} :catchall_52

    .line 3141
    :cond_22
    :goto_22
    monitor-exit p0

    return-void

    .line 3137
    :catch_24
    move-exception v0

    .line 3138
    :try_start_25
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to delete APK file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " for package: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_25 .. :try_end_51} :catchall_52

    goto :goto_22

    .line 3129
    :catchall_52
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized i(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 3153
    monitor-enter p0

    if-eqz p1, :cond_11

    :try_start_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_11

    .line 3154
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_11} :catch_25
    .catchall {:try_start_3 .. :try_end_11} :catchall_49

    .line 3165
    :cond_11
    :goto_11
    :try_start_11
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3166
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_23

    .line 3167
    invoke-static {v0}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_23} :catch_4c
    .catchall {:try_start_11 .. :try_end_23} :catchall_49

    .line 3173
    :cond_23
    :goto_23
    monitor-exit p0

    return-void

    .line 3156
    :catch_25
    move-exception v0

    .line 3157
    :try_start_26
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to delete copy of APK: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_48
    .catchall {:try_start_26 .. :try_end_48} :catchall_49

    goto :goto_11

    .line 3153
    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3169
    :catch_4c
    move-exception v0

    .line 3170
    :try_start_4d
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to delete install folder: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/y;->b(Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_4d .. :try_end_73} :catchall_49

    goto :goto_23
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .registers 18

    .prologue
    .line 891
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 892
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_10
    if-nez p2, :cond_1a

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version argument is invalid (0)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_1a
    if-eqz p3, :cond_22

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2a

    .line 898
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Download URL argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 900
    :cond_2a
    if-eqz p4, :cond_32

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3a

    .line 901
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Download IP adress argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 903
    :cond_3a
    if-eqz p5, :cond_42

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4a

    .line 904
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Digital signature argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 906
    :cond_4a
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 907
    new-instance v0, Lcom/absolute/android/persistservice/e;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/absolute/android/persistservice/e;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;IZ)V

    .line 911
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Q:Lcom/absolute/android/persistservice/l;

    const/4 v2, 0x6

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 912
    return-void
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .registers 2

    .prologue
    .line 460
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 461
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .registers 14

    .prologue
    .line 857
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_10

    .line 858
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Package name argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 860
    :cond_10
    if-eqz p2, :cond_18

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_20

    .line 861
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Access key argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 863
    :cond_20
    if-eqz p3, :cond_28

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 864
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Update URL argument is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 869
    :cond_30
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 870
    new-instance v0, Lcom/absolute/android/persistservice/g;

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/absolute/android/persistservice/g;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V

    .line 874
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Q:Lcom/absolute/android/persistservice/l;

    const/4 v2, 0x5

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 875
    return-void
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .registers 3

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 473
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 710
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->getDeviceIdImpl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdImpl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2672
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/aa;->d()Ljava/lang/String;

    move-result-object v0

    .line 2673
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2674
    :cond_e
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-static {v0}, Lcom/absolute/android/utils/DeviceUtil;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2675
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 2676
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/aa;->e()Z

    .line 2678
    :cond_1e
    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .registers 13

    .prologue
    const/4 v1, 0x0

    .line 753
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 754
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 759
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_a} :catch_1e6

    .line 760
    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Persistence version = 3128, state = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2}, Lcom/absolute/android/persistservice/aa;->a()I

    move-result v2

    invoke-static {v2}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v4

    .line 764
    if-nez v4, :cond_a9

    .line 765
    const-string v0, "There are no managed applications\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    :cond_39
    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    .line 830
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 831
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\nPersisted partition: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", available = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ls -l "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Contents:\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_a .. :try_end_a4} :catchall_1e3

    .line 841
    :goto_a4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 768
    :cond_a9
    :try_start_a9
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 770
    const-string v0, "Managed Applications ---\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    array-length v6, v4

    move v2, v1

    :goto_b6
    if-ge v2, v6, :cond_39

    aget-object v7, v4, v2

    .line 773
    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d8
    .catchall {:try_start_a9 .. :try_end_d8} :catchall_1e3

    .line 779
    const/4 v0, 0x0

    :try_start_d9
    invoke-virtual {v5, v8, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 780
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_df
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d9 .. :try_end_df} :catch_1bb
    .catchall {:try_start_d9 .. :try_end_df} :catchall_1e3

    .line 783
    :goto_df
    if-nez v0, :cond_1bf

    .line 784
    :try_start_e1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "Install status: "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is currently not installed\n\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    :goto_f9
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/n;->g(Ljava/lang/String;)Lcom/absolute/android/persistservice/PersistedAppInfo;

    move-result-object v0

    .line 792
    if-eqz v0, :cond_194

    .line 793
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "APK path = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "APK digest = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->d()I

    move-result v9

    .line 797
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "flags = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_158

    .line 799
    const-string v10, ": INSTALL_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    :cond_158
    and-int/lit8 v10, v9, 0x2

    if-eqz v10, :cond_161

    .line 802
    const-string v10, ": UNINSTALL_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    :cond_161
    and-int/lit8 v10, v9, 0x4

    if-eqz v10, :cond_16a

    .line 805
    const-string v10, ": DOWNLOAD_PENDING "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    :cond_16a
    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_173

    .line 808
    const-string v9, ": DELETE_PERSISTED_FILES_PENDING "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    :cond_173
    const-string v9, "\n"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Update attempt count = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/PersistedAppInfo;->c()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    :cond_194
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 815
    if-nez v0, :cond_1f0

    .line 816
    const-string v0, "No pending install AppProfile\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :goto_1a1
    invoke-virtual {v7}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    const/4 v7, 0x1

    if-ne v0, v7, :cond_1b1

    .line 823
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, v8}, Lcom/absolute/android/persistservice/o;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_1b1
    const-string v0, "--------\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_b6

    :catch_1bb
    move-exception v0

    move v0, v1

    goto/16 :goto_df

    .line 787
    :cond_1bf
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Install status: version "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " is currently installed\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e1
    .catchall {:try_start_e1 .. :try_end_1e1} :catchall_1e3

    goto/16 :goto_f9

    .line 836
    :catchall_1e3
    move-exception v0

    :try_start_1e4
    monitor-exit p0

    throw v0
    :try_end_1e6
    .catch Ljava/lang/Throwable; {:try_start_1e4 .. :try_end_1e6} :catch_1e6

    .line 839
    :catch_1e6
    move-exception v0

    .line 838
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v2, "Exception occurred getting diagnostics: "

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a4

    .line 819
    :cond_1f0
    :try_start_1f0
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Pending install AppProfile = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_20c
    .catchall {:try_start_1f0 .. :try_end_20c} :catchall_1e3

    goto :goto_1a1
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .registers 5

    .prologue
    .line 303
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 304
    monitor-enter p0

    .line 310
    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/y;

    .line 312
    if-nez v0, :cond_1c

    .line 313
    new-instance v0, Lcom/absolute/android/persistservice/y;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->Z:Lcom/absolute/android/persistservice/ab;

    invoke-direct {v0, v1, p1, v2}, Lcom/absolute/android/persistservice/y;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/absolute/android/persistservice/ab;)V

    .line 314
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->W:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1c
    new-instance v1, Lcom/absolute/android/persistservice/ah;

    invoke-direct {v1, v0}, Lcom/absolute/android/persistservice/ah;-><init>(Lcom/absolute/android/persistservice/y;)V

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_23

    return-object v1

    .line 318
    :catchall_23
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPersistedAppCount()I
    .registers 2

    .prologue
    .line 574
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 575
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/n;->b()I

    move-result v0

    return v0
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .registers 6

    .prologue
    .line 611
    if-nez p1, :cond_a

    .line 612
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_a
    if-nez p2, :cond_14

    .line 616
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified fileName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_22

    .line 620
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified fileName argument is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 624
    :cond_22
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 625
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 629
    :cond_30
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 630
    new-instance v0, Lcom/absolute/android/persistservice/z;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/absolute/android/persistservice/z;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/absolute/android/persistservice/y;)V

    .line 633
    return-object v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 244
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/aa;->a()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 294
    const/16 v0, 0xc38

    return v0
.end method

.method public declared-synchronized install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 328
    monitor-enter p0

    if-nez p1, :cond_10

    .line 329
    :try_start_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "AppProfile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_d

    .line 328
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 331
    :cond_10
    :try_start_10
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v3

    .line 334
    if-gtz v3, :cond_4e

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid version number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " specified in AppProfile for package name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Install failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 339
    throw v1

    .line 345
    :cond_4e
    if-eqz p2, :cond_56

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_a8

    .line 346
    :cond_56
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_62

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_70

    .line 348
    :cond_62
    const-string v0, "Installation of application failed because no APK file nor URL was specified."

    .line 350
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 351
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    throw v1

    :cond_70
    move v0, v1

    .line 370
    :cond_71
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 371
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4, v2}, Lcom/absolute/android/persistservice/n;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_81

    .line 375
    iget-object v4, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v4, p1, p2}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 380
    :cond_81
    if-nez v0, :cond_8e

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v4

    if-ne v4, v1, :cond_8e

    .line 381
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, p2, v4}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    .line 387
    :cond_8e
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->M:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v3, p1, p2}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V

    .line 390
    iget-object v3, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/absolute/android/persistservice/n;->a(Ljava/lang/String;I)V

    .line 392
    if-ne v0, v1, :cond_de

    .line 393
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;)V

    .line 400
    :goto_9e
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p3, v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;I)V
    :try_end_a6
    .catchall {:try_start_10 .. :try_end_a6} :catchall_d

    .line 401
    monitor-exit p0

    return-void

    .line 360
    :cond_a8
    :try_start_a8
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 361
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_71

    .line 362
    :cond_bd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installation of application APK: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " failed because the APK file does not exist or is empty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 365
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    throw v1

    .line 396
    :cond_de
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Ljava/lang/String;)V
    :try_end_e1
    .catchall {:try_start_a8 .. :try_end_e1} :catchall_d

    goto :goto_9e
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 6

    .prologue
    .line 590
    if-nez p1, :cond_a

    .line 591
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Method Specification is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_a
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 595
    new-instance v0, Lcom/absolute/android/persistservice/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/absolute/android/persistservice/h;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 598
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->P:Lcom/absolute/android/persistservice/l;

    const/4 v2, 0x4

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 599
    return-void
.end method

.method public refreshDeviceId()V
    .registers 3

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 720
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 723
    return-void
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .registers 7

    .prologue
    .line 646
    if-nez p1, :cond_a

    .line 647
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :cond_a
    if-nez p2, :cond_14

    .line 651
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "IABTPing callback argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 654
    :cond_14
    if-nez p3, :cond_1e

    .line 655
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified ping interval argument is 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 659
    :cond_1e
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 664
    :cond_2c
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 665
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v0

    if-nez v0, :cond_56

    .line 670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The AppProfile for the specified package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has \'monitor\' set to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_56
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, p1, p2, p3}, Lcom/absolute/android/persistservice/o;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 676
    return-void
.end method

.method public setAllPersistence(Z)V
    .registers 3

    .prologue
    .line 561
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 562
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Z)V

    .line 565
    return-void
.end method

.method public declared-synchronized setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .registers 7

    .prologue
    .line 485
    monitor-enter p0

    if-nez p1, :cond_e

    .line 486
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "App Profile argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 485
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 488
    :cond_e
    :try_start_e
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 489
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 493
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/n;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_40

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Package name \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found. Cannot update its AppProfile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string/jumbo v2, "setApplicationProfile() failed: "

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 498
    throw v1

    .line 501
    :cond_40
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    .line 502
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v2

    .line 504
    if-eq v1, v2, :cond_94

    .line 505
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " specified in the AppProfile for package name: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not match the existing version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Use the install() API if you wish to install a new version"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 510
    iget-object v2, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "setApplicationProfile() failed: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 511
    throw v1

    .line 516
    :cond_94
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 517
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/o;->a(Lcom/absolute/android/persistence/AppProfile;)V
    :try_end_9e
    .catchall {:try_start_e .. :try_end_9e} :catchall_b

    .line 518
    monitor-exit p0

    return-void
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 530
    if-nez p1, :cond_a

    .line 531
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Package name argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :cond_a
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_35

    .line 534
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Package name \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' not found. Cannot update its \'persist\' flag"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 537
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string/jumbo v2, "setPersistence() failed: "

    invoke-virtual {v0, v2, v1}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 538
    throw v1

    .line 541
    :cond_35
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 542
    monitor-enter p0

    .line 545
    :try_start_39
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .line 546
    invoke-virtual {v0, p2}, Lcom/absolute/android/persistence/AppProfile;->setIsPersisted(Z)V

    .line 547
    iget-object v1, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;)V

    .line 548
    monitor-exit p0
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_49

    return-void

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setState(I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 253
    if-eq p1, v1, :cond_12

    const/4 v0, 0x2

    if-eq p1, v0, :cond_12

    const/4 v0, 0x3

    if-eq p1, v0, :cond_12

    .line 256
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The newState is not a valid state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_12
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 260
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/aa;->a()I

    move-result v3

    .line 263
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->H:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/aa;->a(I)V

    .line 264
    if-eq v3, p1, :cond_51

    move v0, v1

    .line 266
    :goto_23
    if-eqz v0, :cond_50

    .line 268
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Persistence state was changed from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->stateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 273
    if-ne p1, v1, :cond_50

    .line 278
    invoke-direct {p0, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)V

    .line 284
    :cond_50
    return-void

    :cond_51
    move v0, v2

    .line 264
    goto :goto_23
.end method

.method public testFirmwareUpdate()V
    .registers 3

    .prologue
    .line 732
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 733
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const-string v1, "Testing firmware update ..."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/y;->c(Ljava/lang/String;)V

    .line 738
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Z)V

    .line 739
    return-void
.end method

.method public declared-synchronized uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 24

    .prologue
    .line 410
    monitor-enter p0

    if-nez p1, :cond_e

    .line 411
    :try_start_3
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Package name argument is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_b

    .line 410
    :catchall_b
    move-exception v3

    monitor-exit p0

    throw v3

    .line 413
    :cond_e
    :try_start_e
    invoke-direct/range {p0 .. p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 414
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v3

    .line 418
    if-nez v3, :cond_55

    .line 421
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->I:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_b

    move-result-object v3

    .line 423
    const/4 v4, 0x0

    :try_start_26
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 427
    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    iget v5, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const-string v14, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    const-string v5, ""

    invoke-virtual {v4, v3, v5}, Lcom/absolute/android/persistservice/n;->a(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;)V
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_26 .. :try_end_55} :catch_77
    .catchall {:try_start_26 .. :try_end_55} :catchall_b

    .line 440
    :cond_55
    :try_start_55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/n;->f(Ljava/lang/String;)I

    move-result v3

    .line 442
    if-eqz p2, :cond_9d

    .line 443
    or-int/lit8 v3, v3, 0x8

    .line 448
    :goto_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->L:Lcom/absolute/android/persistservice/n;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v3}, Lcom/absolute/android/persistservice/n;->b(Ljava/lang/String;I)V

    .line 450
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    :try_end_75
    .catchall {:try_start_55 .. :try_end_75} :catchall_b

    .line 451
    monitor-exit p0

    return-void

    .line 433
    :catch_77
    move-exception v3

    :try_start_78
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Can\'t uninstall. The package: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was not found."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 434
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 435
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/absolute/android/persistservice/ABTPersistenceService;->K:Lcom/absolute/android/persistservice/y;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v6}, Lcom/absolute/android/persistservice/y;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 436
    throw v4
    :try_end_9d
    .catchall {:try_start_78 .. :try_end_9d} :catchall_b

    .line 446
    :cond_9d
    and-int/lit8 v3, v3, -0x9

    goto :goto_63
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 686
    if-nez p1, :cond_a

    .line 687
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Specified packageName argument is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_a
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 692
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The specified packageName does not match that of a calling package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_18
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->g()Z

    .line 697
    iget-object v0, p0, Lcom/absolute/android/persistservice/ABTPersistenceService;->V:Lcom/absolute/android/persistservice/o;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/o;->b(Ljava/lang/String;)V

    .line 700
    return-void
.end method
