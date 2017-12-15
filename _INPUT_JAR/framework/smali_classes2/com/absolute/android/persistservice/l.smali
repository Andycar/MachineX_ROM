.class final Lcom/absolute/android/persistservice/l;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method public constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 3404
    iput-object p1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    .line 3405
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3406
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 3411
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_42

    .line 3439
    :goto_5
    return-void

    .line 3415
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/j;

    .line 3416
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V

    goto :goto_5

    .line 3419
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/j;

    .line 3420
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V

    goto :goto_5

    .line 3423
    :pswitch_1a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/j;

    .line 3424
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/j;)V

    goto :goto_5

    .line 3427
    :pswitch_24
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/h;

    .line 3428
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/h;)V

    goto :goto_5

    .line 3431
    :pswitch_2e
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/g;

    .line 3432
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/g;)Lcom/absolute/android/persistence/AppInfoProperties;

    goto :goto_5

    .line 3435
    :pswitch_38
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/absolute/android/persistservice/e;

    .line 3436
    iget-object v1, p0, Lcom/absolute/android/persistservice/l;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1, v0}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/e;)Ljava/lang/String;

    goto :goto_5

    .line 3411
    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_6
        :pswitch_10
        :pswitch_1a
        :pswitch_24
        :pswitch_2e
        :pswitch_38
    .end packed-switch
.end method
