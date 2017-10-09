.class public Lcom/android/internal/policy/impl/PolicyControl;
.super Ljava/lang/Object;
.source "PolicyControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PolicyControl$Filter;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static final NAME_IMMERSIVE_FULL:Ljava/lang/String; = "immersive.full"

.field private static final NAME_IMMERSIVE_NAVIGATION:Ljava/lang/String; = "immersive.navigation"

.field private static final NAME_IMMERSIVE_PRECONFIRMATIONS:Ljava/lang/String; = "immersive.preconfirms"

.field private static final NAME_IMMERSIVE_STATUS:Ljava/lang/String; = "immersive.status"

.field private static TAG:Ljava/lang/String;

.field private static sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

.field private static sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

.field private static sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

.field private static sSettingValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 52
    const-string v0, "PolicyControl"

    sput-object v0, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/PolicyControl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method public static adjustClearableFlags(Landroid/view/WindowManagerPolicy$WindowState;I)I
    .registers 4
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "clearableFlags"    # I

    .prologue
    .line 100
    if-eqz p0, :cond_15

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 101
    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    :goto_6
    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 102
    and-int/lit8 p1, p1, -0x5

    .line 104
    :cond_14
    return p1

    .line 100
    .end local v0    # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_15
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static disableImmersiveConfirmation(Ljava/lang/String;)Z
    .registers 2
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_c
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private static dump(Ljava/lang/String;Lcom/android/internal/policy/impl/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "filter"    # Lcom/android/internal/policy/impl/PolicyControl$Filter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 135
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "PolicyControl."

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v0, 0x3d

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 136
    if-nez p1, :cond_18

    .line 137
    const-string v0, "null"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    :goto_17
    return-void

    .line 139
    :cond_18
    invoke-virtual {p1, p3}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    goto :goto_17
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 129
    const-string v0, "sImmersiveStatusFilter"

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/policy/impl/PolicyControl;->dump(Ljava/lang/String;Lcom/android/internal/policy/impl/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 130
    const-string v0, "sImmersiveNavigationFilter"

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/policy/impl/PolicyControl;->dump(Ljava/lang/String;Lcom/android/internal/policy/impl/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 131
    const-string v0, "sImmersivePreconfirmationsFilter"

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/policy/impl/PolicyControl;->dump(Ljava/lang/String;Lcom/android/internal/policy/impl/PolicyControl$Filter;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 132
    return-void
.end method

.method public static getSystemUiVisibility(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 66
    if-eqz p1, :cond_2d

    .line 67
    :goto_2
    if-eqz p0, :cond_32

    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getSystemUiVisibility()I

    move-result v0

    .line 68
    .local v0, "vis":I
    :goto_8
    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-eqz v1, :cond_1a

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 69
    or-int/lit16 v0, v0, 0x1404

    .line 72
    const v1, -0x40000101    # -1.9999694f

    and-int/2addr v0, v1

    .line 75
    :cond_1a
    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-eqz v1, :cond_2c

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 76
    or-int/lit16 v0, v0, 0x1202

    .line 79
    const v1, 0x7ffffeff

    and-int/2addr v0, v1

    .line 82
    :cond_2c
    return v0

    .line 66
    .end local v0    # "vis":I
    :cond_2d
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_2

    .line 67
    :cond_32
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    goto :goto_8
.end method

.method public static getWindowFlags(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManager$LayoutParams;)I
    .registers 4
    .param p0, "win"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p1, "attrs"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 86
    if-eqz p1, :cond_27

    .line 87
    :goto_2
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 88
    .local v0, "flags":I
    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 89
    or-int/lit16 v0, v0, 0x400

    .line 90
    const v1, -0x4000801

    and-int/2addr v0, v1

    .line 93
    :cond_16
    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-eqz v1, :cond_26

    sget-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v1, p1}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->matches(Landroid/view/WindowManager$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 94
    const v1, -0x8000001

    and-int/2addr v0, v1

    .line 96
    :cond_26
    return v0

    .line 86
    .end local v0    # "flags":I
    :cond_27
    invoke-interface {p0}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    goto :goto_2
.end method

.method public static reloadFromSetting(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 114
    sget-boolean v2, Lcom/android/internal/policy/impl/PolicyControl;->DEBUG:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    const-string v3, "reloadFromSetting()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_b
    const/4 v1, 0x0

    .line 117
    .local v1, "value":Ljava/lang/String;
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "policy_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 120
    sget-object v2, Lcom/android/internal/policy/impl/PolicyControl;->sSettingValue:Ljava/lang/String;

    if-eqz v2, :cond_24

    sget-object v2, Lcom/android/internal/policy/impl/PolicyControl;->sSettingValue:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 126
    :goto_23
    return-void

    .line 121
    :cond_24
    invoke-static {v1}, Lcom/android/internal/policy/impl/PolicyControl;->setFilters(Ljava/lang/String;)V

    .line 122
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sSettingValue:Ljava/lang/String;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_29} :catch_2a

    goto :goto_23

    .line 123
    :catch_2a
    move-exception v0

    .line 124
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading policy control, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method

.method private static setFilters(Ljava/lang/String;)V
    .registers 14
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .line 144
    sget-boolean v9, Lcom/android/internal/policy/impl/PolicyControl;->DEBUG:Z

    if-eqz v9, :cond_1d

    sget-object v9, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setFilters: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1d
    sput-object v12, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    .line 146
    sput-object v12, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    .line 147
    sput-object v12, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    .line 148
    if-eqz p0, :cond_93

    .line 149
    const-string v9, ":"

    invoke-virtual {p0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 150
    .local v7, "nvps":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_2e
    if-ge v3, v4, :cond_93

    aget-object v6, v0, v3

    .line 151
    .local v6, "nvp":Ljava/lang/String;
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 152
    .local v2, "i":I
    const/4 v9, -0x1

    if-ne v2, v9, :cond_3e

    .line 150
    :cond_3b
    :goto_3b
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    .line 153
    :cond_3e
    const/4 v9, 0x0

    invoke-virtual {v6, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, "n":Ljava/lang/String;
    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v6, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "v":Ljava/lang/String;
    const-string v9, "immersive.full"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 156
    invoke-static {v8}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/internal/policy/impl/PolicyControl$Filter;

    move-result-object v1

    .line 157
    .local v1, "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    .line 158
    sget-object v9, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-nez v9, :cond_3b

    .line 159
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    goto :goto_3b

    .line 161
    .end local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    :cond_60
    const-string v9, "immersive.status"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6f

    .line 162
    invoke-static {v8}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/internal/policy/impl/PolicyControl$Filter;

    move-result-object v1

    .line 163
    .restart local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    goto :goto_3b

    .line 164
    .end local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    :cond_6f
    const-string v9, "immersive.navigation"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_84

    .line 165
    invoke-static {v8}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/internal/policy/impl/PolicyControl$Filter;

    move-result-object v1

    .line 166
    .restart local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    .line 167
    sget-object v9, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    if-nez v9, :cond_3b

    .line 168
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    goto :goto_3b

    .line 170
    .end local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    :cond_84
    const-string v9, "immersive.preconfirms"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    .line 171
    invoke-static {v8}, Lcom/android/internal/policy/impl/PolicyControl$Filter;->parse(Ljava/lang/String;)Lcom/android/internal/policy/impl/PolicyControl$Filter;

    move-result-object v1

    .line 172
    .restart local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    sput-object v1, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    goto :goto_3b

    .line 176
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "f":Lcom/android/internal/policy/impl/PolicyControl$Filter;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "n":Ljava/lang/String;
    .end local v6    # "nvp":Ljava/lang/String;
    .end local v7    # "nvps":[Ljava/lang/String;
    .end local v8    # "v":Ljava/lang/String;
    :cond_93
    sget-boolean v9, Lcom/android/internal/policy/impl/PolicyControl;->DEBUG:Z

    if-eqz v9, :cond_e5

    .line 177
    sget-object v9, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersiveStatusFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveStatusFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    sget-object v9, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersiveNavigationFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/policy/impl/PolicyControl;->sImmersiveNavigationFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v9, Lcom/android/internal/policy/impl/PolicyControl;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "immersivePreconfirmationsFilter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/internal/policy/impl/PolicyControl;->sImmersivePreconfirmationsFilter:Lcom/android/internal/policy/impl/PolicyControl$Filter;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_e5
    return-void
.end method
