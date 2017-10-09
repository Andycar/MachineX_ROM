.class public Lcom/android/settings/settingssearch/SettingsSearchItem;
.super Ljava/lang/Object;
.source "SettingsSearchItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/settingssearch/SettingsSearchItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public iconResId:I

.field public id_key:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public menuPath:Ljava/lang/String;

.field public menuType:I

.field public packageName:Ljava/lang/String;

.field public parentsKey:Ljava/lang/String;

.field public preference:Landroid/preference/Preference;

.field public registerMode:I

.field public rowId:I

.field public summary:Ljava/lang/String;

.field public summaryResId:J

.field public title:Ljava/lang/String;

.field public titleResId:J

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/android/settings/settingssearch/SettingsSearchItem$1;

    invoke-direct {v0}, Lcom/android/settings/settingssearch/SettingsSearchItem$1;-><init>()V

    sput-object v0, Lcom/android/settings/settingssearch/SettingsSearchItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 17
    iput-wide v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 21
    iput-wide v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 23
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 25
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 37
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->registerMode:I

    .line 42
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->preference:Landroid/preference/Preference;

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->rowId:I

    .line 17
    iput-wide v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 21
    iput-wide v4, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 23
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 25
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 27
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 29
    const-string v0, "com.android.settings"

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 31
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 35
    iput v1, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->value:I

    .line 37
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->registerMode:I

    .line 42
    iput-object v2, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->preference:Landroid/preference/Preference;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->id_key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->titleResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    iget-wide v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->summaryResId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->iconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->parentsKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->menuPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->language:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget v0, p0, Lcom/android/settings/settingssearch/SettingsSearchItem;->registerMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void
.end method
