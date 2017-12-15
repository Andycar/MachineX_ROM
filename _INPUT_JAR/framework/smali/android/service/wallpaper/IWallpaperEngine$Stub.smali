.class public abstract Landroid/service/wallpaper/IWallpaperEngine$Stub;
.super Landroid/os/Binder;
.source "IWallpaperEngine.java"

# interfaces
.implements Landroid/service/wallpaper/IWallpaperEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/wallpaper/IWallpaperEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.wallpaper.IWallpaperEngine"

.field static final TRANSACTION_destroy:I = 0x6

.field static final TRANSACTION_dispatchPointer:I = 0x4

.field static final TRANSACTION_dispatchWallpaperCommand:I = 0x5

.field static final TRANSACTION_setDesiredSize:I = 0x1

.field static final TRANSACTION_setDisplayPadding:I = 0x2

.field static final TRANSACTION_setVisibility:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p0, p0, v0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperEngine;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "android.service.wallpaper.IWallpaperEngine"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 41
    sparse-switch p1, :sswitch_data_9a

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_8
    return v6

    .line 45
    :sswitch_9
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_8

    .line 50
    :sswitch_f
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 54
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDesiredSize(II)V

    goto :goto_8

    .line 60
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_20
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_37

    .line 63
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 68
    .local v1, "_arg0":Landroid/graphics/Rect;
    :goto_33
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setDisplayPadding(Landroid/graphics/Rect;)V

    goto :goto_8

    .line 66
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/graphics/Rect;
    goto :goto_33

    .line 73
    .end local v1    # "_arg0":Landroid/graphics/Rect;
    :sswitch_39
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_49

    move v1, v6

    .line 76
    .local v1, "_arg0":Z
    :goto_45
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->setVisibility(Z)V

    goto :goto_8

    .line 75
    .end local v1    # "_arg0":Z
    :cond_49
    const/4 v1, 0x0

    goto :goto_45

    .line 81
    :sswitch_4b
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_62

    .line 84
    sget-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    .line 89
    .local v1, "_arg0":Landroid/view/MotionEvent;
    :goto_5e
    invoke-virtual {p0, v1}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchPointer(Landroid/view/MotionEvent;)V

    goto :goto_8

    .line 87
    .end local v1    # "_arg0":Landroid/view/MotionEvent;
    :cond_62
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/view/MotionEvent;
    goto :goto_5e

    .line 94
    .end local v1    # "_arg0":Landroid/view/MotionEvent;
    :sswitch_64
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 100
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 102
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 104
    .local v4, "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8d

    .line 105
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    .local v5, "_arg4":Landroid/os/Bundle;
    :goto_87
    move-object v0, p0

    .line 110
    invoke-virtual/range {v0 .. v5}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->dispatchWallpaperCommand(Ljava/lang/String;IIILandroid/os/Bundle;)V

    goto/16 :goto_8

    .line 108
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :cond_8d
    const/4 v5, 0x0

    .restart local v5    # "_arg4":Landroid/os/Bundle;
    goto :goto_87

    .line 115
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":Landroid/os/Bundle;
    :sswitch_8f
    const-string v0, "android.service.wallpaper.IWallpaperEngine"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/service/wallpaper/IWallpaperEngine$Stub;->destroy()V

    goto/16 :goto_8

    .line 41
    nop

    :sswitch_data_9a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_20
        0x3 -> :sswitch_39
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_64
        0x6 -> :sswitch_8f
        0x5f4e5446 -> :sswitch_9
    .end sparse-switch
.end method
