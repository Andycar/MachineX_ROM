.class Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IABTResultReceiver.java"

# interfaces
.implements Lcom/absolute/android/persistence/IABTResultReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/IABTResultReceiver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 104
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 111
    const-string v0, "com.absolute.android.persistence.IABTResultReceiver"

    return-object v0
.end method

.method public onInvokeResult(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/MethodReturnValue;ZLjava/lang/String;)V
    .registers 10
    .param p1, "methodSpec"    # Lcom/absolute/android/persistence/MethodSpec;
    .param p2, "methodReturnValue"    # Lcom/absolute/android/persistence/MethodReturnValue;
    .param p3, "succeeded"    # Z
    .param p4, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 181
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 182
    if-eqz p1, :cond_3c

    .line 183
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/absolute/android/persistence/MethodSpec;->writeToParcel(Landroid/os/Parcel;I)V

    .line 189
    :goto_19
    if-eqz p2, :cond_49

    .line 190
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v4, 0x0

    invoke-virtual {p2, v0, v4}, Lcom/absolute/android/persistence/MethodReturnValue;->writeToParcel(Landroid/os/Parcel;I)V

    .line 196
    :goto_23
    if-eqz p3, :cond_4e

    :goto_25
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_a .. :try_end_35} :catchall_41

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 205
    return-void

    .line 187
    :cond_3c
    const/4 v4, 0x0

    :try_start_3d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_19

    .line 202
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 203
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2

    .line 194
    :cond_49
    const/4 v4, 0x0

    :try_start_4a
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_41

    goto :goto_23

    :cond_4e
    move v2, v3

    .line 196
    goto :goto_25
.end method

.method public onOperationResult(IZLjava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "operationId"    # I
    .param p2, "succeeded"    # Z
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "errorMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 138
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 139
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v4, "com.absolute.android.persistence.IABTResultReceiver"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    if-eqz p2, :cond_2e

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/absolute/android/persistence/IABTResultReceiver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_30

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    return-void

    :cond_2e
    move v2, v3

    .line 143
    goto :goto_14

    .line 150
    :catchall_30
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v2
.end method
