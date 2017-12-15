.class final Lcom/absolute/android/persistservice/af;
.super Landroid/os/FileObserver;
.source "SourceFile"


# static fields
.field private static final b:I = 0x2


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ab;

.field private c:Lcom/absolute/android/persistservice/ag;

.field private d:Z


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ab;Lcom/absolute/android/persistservice/ag;)V
    .registers 5

    .prologue
    .line 368
    iput-object p1, p0, Lcom/absolute/android/persistservice/af;->a:Lcom/absolute/android/persistservice/ab;

    .line 369
    iget-object v0, p2, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 370
    iput-object p2, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    .line 371
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/af;)Z
    .registers 2

    .prologue
    .line 356
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/af;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/af;Z)Z
    .registers 2

    .prologue
    .line 356
    iput-boolean p1, p0, Lcom/absolute/android/persistservice/af;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/af;)Lcom/absolute/android/persistservice/ag;
    .registers 2

    .prologue
    .line 356
    iget-object v0, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    return-object v0
.end method


# virtual methods
.method public final onEvent(ILjava/lang/String;)V
    .registers 6

    .prologue
    .line 379
    if-nez p2, :cond_a

    iget-object v0, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    iget-object v0, v0, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    .line 384
    :goto_6
    packed-switch p1, :pswitch_data_2c

    .line 397
    :cond_9
    :goto_9
    return-void

    .line 379
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/absolute/android/persistservice/af;->c:Lcom/absolute/android/persistservice/ag;

    iget-object v1, v1, Lcom/absolute/android/persistservice/ag;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 386
    :pswitch_20
    iget-boolean v1, p0, Lcom/absolute/android/persistservice/af;->d:Z

    if-nez v1, :cond_9

    .line 388
    iget-object v1, p0, Lcom/absolute/android/persistservice/af;->a:Lcom/absolute/android/persistservice/ab;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/absolute/android/persistservice/ab;->a(Lcom/absolute/android/persistservice/ab;Ljava/lang/String;Z)V

    goto :goto_9

    .line 384
    nop

    :pswitch_data_2c
    .packed-switch 0x2
        :pswitch_20
    .end packed-switch
.end method
