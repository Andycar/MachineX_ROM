.class final Lcom/absolute/android/persistservice/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

.field private g:Z


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;Z)V
    .registers 8

    .prologue
    .line 3306
    iput-object p1, p0, Lcom/absolute/android/persistservice/g;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3307
    iput-object p2, p0, Lcom/absolute/android/persistservice/g;->b:Ljava/lang/String;

    .line 3308
    iput-object p3, p0, Lcom/absolute/android/persistservice/g;->c:Ljava/lang/String;

    .line 3309
    iput-object p4, p0, Lcom/absolute/android/persistservice/g;->d:Ljava/lang/String;

    .line 3310
    iput-object p5, p0, Lcom/absolute/android/persistservice/g;->e:Ljava/lang/String;

    .line 3311
    iput-object p6, p0, Lcom/absolute/android/persistservice/g;->f:Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    .line 3312
    iput-boolean p7, p0, Lcom/absolute/android/persistservice/g;->g:Z

    .line 3313
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/g;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    .registers 2

    .prologue
    .line 3277
    iget-object v0, p0, Lcom/absolute/android/persistservice/g;->f:Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;

    return-object v0
.end method

.method static synthetic f(Lcom/absolute/android/persistservice/g;)Z
    .registers 2

    .prologue
    .line 3277
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/g;->g:Z

    return v0
.end method
