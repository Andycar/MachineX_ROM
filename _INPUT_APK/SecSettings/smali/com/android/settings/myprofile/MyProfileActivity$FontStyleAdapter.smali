.class public Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;
.super Landroid/widget/BaseAdapter;
.source "MyProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/myprofile/MyProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontStyleAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings/myprofile/MyProfileActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/myprofile/MyProfileActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1089
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 1090
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/android/settings/myprofile/MyProfileActivity;->access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v0}, Lcom/android/settings/myprofile/MyProfileActivity;->access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1104
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1109
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04012e

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1110
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1112
    .local v0, "tvFontName":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    iget-object v2, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v2}, Lcom/android/settings/myprofile/MyProfileActivity;->access$800(Lcom/android/settings/myprofile/MyProfileActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lcom/android/settings/myprofile/MyProfileActivity;->access$900(Lcom/android/settings/myprofile/MyProfileActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v1}, Lcom/android/settings/myprofile/MyProfileActivity;->access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;

    move-result-object v1

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/android/settings/myprofile/MyProfileActivity$FontStyleAdapter;->this$0:Lcom/android/settings/myprofile/MyProfileActivity;

    invoke-static {v1}, Lcom/android/settings/myprofile/MyProfileActivity;->access$400(Lcom/android/settings/myprofile/MyProfileActivity;)[Landroid/graphics/Typeface;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1117
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1122
    :cond_0
    :goto_0
    return-object p2

    .line 1119
    :catch_0
    move-exception v1

    goto :goto_0
.end method
