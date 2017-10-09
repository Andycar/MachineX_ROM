.class public Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
.super Ljava/lang/Object;
.source "KeyguardTouchDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field static final KEYGUARD_CLASS:Ljava/lang/String; = "com.android.systemui.keyguard.KeyguardService"

.field static final KEYGUARD_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field protected static final TAG:Ljava/lang/String; = "KeyguardTouchDelegate"

.field private static final sConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;


# instance fields
.field private final mKeyguardConnection:Landroid/content/ServiceConnection;

.field private volatile mService:Lcom/android/internal/policy/IKeyguardService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sConnectionListeners:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    .line 81
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 82
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.systemui"

    const-string v2, "com.android.systemui.keyguard.KeyguardService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mKeyguardConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;Lcom/android/internal/policy/IKeyguardService;)Lcom/android/internal/policy/IKeyguardService;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .param p1, "x1"    # Lcom/android/internal/policy/IKeyguardService;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    return-object p1
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sConnectionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .prologue
    .line 40
    sput-object p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    return-object p0
.end method

.method public static addListener(Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate$OnKeyguardConnectionListener;

    .prologue
    .line 200
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    sget-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 93
    .local v0, "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .end local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->sInstance:Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;

    .line 96
    .restart local v0    # "instance":Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 187
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 189
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException dismissing keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dismiss(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public dispatch(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 115
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 117
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/policy/IKeyguardService;->dispatch(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    const/4 v2, 0x1

    .line 126
    :goto_0
    return v2

    .line 119
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException sending event to keyguard!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "dispatch(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isInputRestricted()Z
    .locals 4

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 131
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 133
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isInputRestricted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 140
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isInputRestricted(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isSecure()Z
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 101
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 103
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 110
    :goto_0
    return v2

    .line 104
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException calling keyguard.isSecure()!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 110
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 108
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isSecure(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public isShowingAndNotOccluded()Z
    .locals 4

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 145
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 147
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->isShowingAndNotOccluded()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 154
    :goto_0
    return v2

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "Remote Exception"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 152
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "isShowingAndNotOccluded(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public launchCamera()V
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 173
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 175
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->launchCamera()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching camera!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 181
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "launchCamera(): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showAssistant()V
    .locals 4

    .prologue
    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardTouchDelegate;->mService:Lcom/android/internal/policy/IKeyguardService;

    .line 159
    .local v1, "service":Lcom/android/internal/policy/IKeyguardService;
    if-eqz v1, :cond_0

    .line 161
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/policy/IKeyguardService;->showAssistant()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "RemoteException launching assistant!"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 167
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "KeyguardTouchDelegate"

    const-string v3, "showAssistant(event): NO SERVICE!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
