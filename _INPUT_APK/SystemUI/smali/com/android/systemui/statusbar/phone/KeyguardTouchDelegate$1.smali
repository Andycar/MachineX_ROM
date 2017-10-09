.class Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;
.super Ljava/lang/Object;
.source "KeyguardTouchDelegate.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 57
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Connected to keyguard"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-static {p2}, Lcom/android/internal/policy/IKeyguardService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/policy/IKeyguardService;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    .line 60
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 61
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;

    .line 62
    .local v1, "listener":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;->onKeyguardServiceConnected(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    .end local v1    # "listener":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 68
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Disconnected from keyguard"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-static {v2, v4}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;

    .line 70
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$202(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 73
    invoke-static {}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->access$100()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;

    .line 74
    .local v1, "listener":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;->onKeyguardServiceDisconnected(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    .end local v1    # "listener":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;
    :cond_0
    return-void
.end method
