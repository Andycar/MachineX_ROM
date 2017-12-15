.class final Lcom/absolute/android/persistservice/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Lcom/absolute/android/persistence/MethodSpec;

.field private c:Lcom/absolute/android/persistence/IABTResultReceiver;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .registers 4

    .prologue
    .line 3268
    iput-object p1, p0, Lcom/absolute/android/persistservice/h;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3269
    iput-object p2, p0, Lcom/absolute/android/persistservice/h;->b:Lcom/absolute/android/persistence/MethodSpec;

    .line 3270
    iput-object p3, p0, Lcom/absolute/android/persistservice/h;->c:Lcom/absolute/android/persistence/IABTResultReceiver;

    .line 3271
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/MethodSpec;
    .registers 2

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/absolute/android/persistservice/h;->b:Lcom/absolute/android/persistence/MethodSpec;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/h;)Lcom/absolute/android/persistence/IABTResultReceiver;
    .registers 2

    .prologue
    .line 3259
    iget-object v0, p0, Lcom/absolute/android/persistservice/h;->c:Lcom/absolute/android/persistence/IABTResultReceiver;

    return-object v0
.end method
