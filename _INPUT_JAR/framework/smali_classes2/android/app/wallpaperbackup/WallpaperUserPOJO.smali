.class public Landroid/app/wallpaperbackup/WallpaperUserPOJO;
.super Ljava/lang/Object;
.source "WallpaperUserPOJO.java"


# instance fields
.field private component:Ljava/lang/String;

.field private height:I

.field private name:Ljava/lang/String;

.field private userId:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "component"    # Ljava/lang/String;
    .param p5, "userId"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    .line 58
    iput p2, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    .line 59
    iput-object p3, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    .line 61
    iput p5, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    .line 62
    return-void
.end method


# virtual methods
.method public getComponent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    return v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    return v0
.end method

.method public setComponent(Ljava/lang/String;)V
    .registers 2
    .param p1, "component"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->component:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setHeight(I)V
    .registers 2
    .param p1, "height"    # I

    .prologue
    .line 16
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->height:I

    .line 17
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->name:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    .prologue
    .line 37
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->userId:I

    .line 38
    return-void
.end method

.method public setWidth(I)V
    .registers 2
    .param p1, "width"    # I

    .prologue
    .line 9
    iput p1, p0, Landroid/app/wallpaperbackup/WallpaperUserPOJO;->width:I

    .line 10
    return-void
.end method
