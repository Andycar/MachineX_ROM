.class public Lcom/android/systemui/usb/ExternalStorageUnmountActivity;
.super Landroid/app/Activity;
.source "ExternalStorageUnmountActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExternalStorageUnmountActivity"

.field private static final localLOGD:Z = true


# instance fields
.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mStoragePath:Ljava/lang/String;

.field private mStorageVolumes:[Landroid/os/storage/StorageVolume;

.field private mSubSystem:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 40
    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 42
    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStoragePath:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mSubSystem:Ljava/lang/String;

    return-void
.end method

.method private unmountExternalStorages(Ljava/lang/String;)V
    .locals 8
    .param p1, "subsystem"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    .line 106
    .local v3, "mountService":Landroid/os/storage/IMountService;
    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    array-length v2, v5

    .line 107
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 108
    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 109
    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v6, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "status":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mounted_ro"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 113
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v3, v5, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v4    # "status":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v1    # "i":I
    .end local v2    # "length":I
    .end local v3    # "mountService":Landroid/os/storage/IMountService;
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "ExternalStorageUnmountActivity"

    const-string v6, "Failed to unmount"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    return-void
.end method


# virtual methods
.method getMountService()Landroid/os/storage/IMountService;
    .locals 3

    .prologue
    .line 90
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 91
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 92
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 93
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    .line 98
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 95
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "ExternalStorageUnmountActivity"

    const-string v2, "Can\'t get mount service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 50
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 51
    :cond_0
    if-eqz v0, :cond_1

    const-string v3, "storage_volume"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStoragePath:Ljava/lang/String;

    .line 53
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v3, :cond_2

    .line 54
    const-string v3, "storage"

    invoke-virtual {p0, v3}, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 55
    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 57
    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStoragePath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 58
    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v4, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/os/storage/StorageManager;->getVolume(Ljava/lang/String;)Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 59
    .local v2, "volume":Landroid/os/storage/StorageVolume;
    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mSubSystem:Ljava/lang/String;

    .line 65
    .end local v2    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    const-string v3, "ExternalStorageUnmountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mStoragePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->mSubSystem:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->unmountExternalStorages(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageUnmountActivity;->finish()V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 73
    const-string v0, "ExternalStorageUnmountActivity"

    const-string v1, "onDestroy !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    const-string v0, "ExternalStorageUnmountActivity"

    const-string v1, "onPause !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    const-string v0, "ExternalStorageUnmountActivity"

    const-string v1, "onResume !!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method
