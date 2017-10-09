.class final Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;
.super Ljava/lang/Object;
.source "RecentsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/RecentsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OnClickRemoveAllButton"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/RecentsActivity;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recents/RecentsActivity;)V
    .locals 0

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recents/RecentsActivity;Lcom/android/systemui/recents/RecentsActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/recents/RecentsActivity;
    .param p2, "x1"    # Lcom/android/systemui/recents/RecentsActivity$1;

    .prologue
    .line 1219
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recents/RecentsActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1224
    sget-boolean v10, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v10, :cond_0

    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v10, v10, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->closeAllButtonVisibility:Z

    if-nez v10, :cond_0

    .line 1225
    const-string v10, "StatusBar_Recents"

    const-string v11, "OnClickRemoveAllButton: return"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    :goto_0
    return-void

    .line 1228
    :cond_0
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    invoke-virtual {v10}, Lcom/android/systemui/recents/RecentsActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1230
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v4

    .line 1231
    .local v4, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v11, 0x6

    iget-object v12, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    iget-object v12, v12, Lcom/android/systemui/recents/RecentsActivity;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v12, v12, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    const/4 v13, 0x0

    invoke-virtual {v4, v10, v11, v12, v13}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->reload(Landroid/content/Context;IZZ)Lcom/android/systemui/recents/model/SpaceNode;

    move-result-object v5

    .line 1234
    .local v5, "root":Lcom/android/systemui/recents/model/SpaceNode;
    const/4 v1, 0x0

    .line 1235
    .local v1, "clearStacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/SpaceNode;->getStacks()Ljava/util/ArrayList;

    move-result-object v1

    .line 1236
    if-eqz v1, :cond_2

    .line 1237
    const-string v10, "StatusBar_Recents"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove all Stacks: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v2, v10, :cond_2

    .line 1239
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/TaskStack;

    .line 1240
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v9

    .line 1241
    .local v9, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1243
    .local v8, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_2
    if-ge v3, v8, :cond_1

    .line 1244
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 1252
    .local v7, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v10, v7, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v10, v10, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    const/4 v11, 0x1

    invoke-virtual {v0, v10, v11}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 1243
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1254
    .end local v7    # "t":Lcom/android/systemui/recents/model/Task;
    :cond_1
    const-string v10, "StatusBar_Recents"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "remove all tasks: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1257
    .end local v2    # "i":I
    .end local v3    # "j":I
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "taskCount":I
    .end local v9    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/systemui/recents/RecentsActivity;->mRemoveAllButtonClicked:Z

    .line 1258
    iget-object v10, p0, Lcom/android/systemui/recents/RecentsActivity$OnClickRemoveAllButton;->this$0:Lcom/android/systemui/recents/RecentsActivity;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/systemui/recents/RecentsActivity;->dismissRecentsToHome(Z)Z

    goto/16 :goto_0
.end method
