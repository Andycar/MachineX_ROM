.class public Landroid/view/WindowId;
.super Ljava/lang/Object;
.source "WindowId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowId$FocusObserver;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/WindowId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mToken:Landroid/view/IWindowId;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 198
    new-instance v0, Landroid/view/WindowId$1;

    invoke-direct {v0}, Landroid/view/WindowId$1;-><init>()V

    sput-object v0, Landroid/view/WindowId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "target"    # Landroid/os/IBinder;

    .prologue
    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 222
    invoke-static {p1}, Landroid/view/IWindowId$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowId;

    move-result-object v0

    iput-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/view/IWindowId;)V
    .registers 2
    .param p1, "target"    # Landroid/view/IWindowId;

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput-object p1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    .line 218
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "otherObj"    # Ljava/lang/Object;

    .prologue
    .line 167
    instance-of v0, p1, Landroid/view/WindowId;

    if-eqz v0, :cond_17

    .line 168
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    check-cast p1, Landroid/view/WindowId;

    .end local p1    # "otherObj":Ljava/lang/Object;
    iget-object v1, p1, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 171
    :goto_16
    return v0

    .restart local p1    # "otherObj":Ljava/lang/Object;
    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getTarget()Landroid/view/IWindowId;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isFocused()Z
    .registers 3

    .prologue
    .line 122
    :try_start_0
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->isFocused()Z
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    .line 124
    :goto_6
    return v1

    .line 123
    :catch_7
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public registerFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/view/WindowId$FocusObserver;

    .prologue
    .line 132
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v1

    .line 133
    :try_start_3
    iget-object v0, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 134
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Focus observer already registered with input token"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 137
    :cond_1c
    :try_start_1c
    iget-object v0, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_19

    .line 139
    :try_start_27
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    invoke-interface {v0, v2}, Landroid/view/IWindowId;->registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2e} :catch_30
    .catchall {:try_start_27 .. :try_end_2e} :catchall_19

    .line 142
    :goto_2e
    :try_start_2e
    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_19

    .line 143
    return-void

    .line 140
    :catch_30
    move-exception v0

    goto :goto_2e
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "IntentSender{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    if-eqz v1, :cond_33

    iget-object v1, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v1}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :goto_26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 185
    :cond_33
    const/4 v1, 0x0

    goto :goto_26
.end method

.method public unregisterFocusObserver(Landroid/view/WindowId$FocusObserver;)V
    .registers 5
    .param p1, "observer"    # Landroid/view/WindowId$FocusObserver;

    .prologue
    .line 149
    iget-object v1, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    monitor-enter v1

    .line 150
    :try_start_3
    iget-object v0, p1, Landroid/view/WindowId$FocusObserver;->mRegistrations:Ljava/util/HashMap;

    iget-object v2, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v2}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1c

    .line 151
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Focus observer not registered with input token"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v0

    .line 154
    :cond_1c
    :try_start_1c
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    iget-object v2, p1, Landroid/view/WindowId$FocusObserver;->mIObserver:Landroid/view/IWindowFocusObserver$Stub;

    invoke-interface {v0, v2}, Landroid/view/IWindowId;->unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_23} :catch_25
    .catchall {:try_start_1c .. :try_end_23} :catchall_19

    .line 157
    :goto_23
    :try_start_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_19

    .line 158
    return-void

    .line 155
    :catch_25
    move-exception v0

    goto :goto_23
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 195
    iget-object v0, p0, Landroid/view/WindowId;->mToken:Landroid/view/IWindowId;

    invoke-interface {v0}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 196
    return-void
.end method
