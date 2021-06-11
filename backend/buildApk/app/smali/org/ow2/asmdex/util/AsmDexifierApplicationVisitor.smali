.class public Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;
.super Lorg/ow2/asmdex/ApplicationVisitor;
.source "AsmDexifierApplicationVisitor.java"


# static fields
.field private static final NB_OPCODES:I = 0x100

.field public static final OPCODES_FULLY_QUALIFIED_NAME:Ljava/lang/String; = "org.ow2.asmdex.Opcodes"

.field private static final OPCODES_START:Ljava/lang/String; = "INSN_"

.field private static classesToVisit:[Ljava/lang/String;

.field private static dexFileName:Ljava/lang/String;

.field private static opcodeNames:[Ljava/lang/String;


# instance fields
.field private dumpMethods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filenameOutput:Ljava/lang/String;

.field private methodToCall:Lorg/ow2/asmdex/util/TextComposite;

.field private packageName:Ljava/lang/String;

.field private final pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

.field protected final pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(ILjava/io/PrintWriter;)V
    .locals 1
    .param p1, "api"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 131
    invoke-direct {p0, p1}, Lorg/ow2/asmdex/ApplicationVisitor;-><init>(I)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->packageName:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->filenameOutput:Ljava/lang/String;

    .line 132
    iput-object p2, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pw:Ljava/io/PrintWriter;

    .line 133
    new-instance v0, Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dumpMethods:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Lorg/ow2/asmdex/util/TextComposite;

    invoke-direct {v0}, Lorg/ow2/asmdex/util/TextComposite;-><init>()V

    iput-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->methodToCall:Lorg/ow2/asmdex/util/TextComposite;

    .line 136
    return-void
.end method

.method public constructor <init>(ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # I
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "filenameOutput"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0, p1, p2}, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;-><init>(ILjava/io/PrintWriter;)V

    .line 150
    iput-object p3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->packageName:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->filenameOutput:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public static getOpcodeName(I)Ljava/lang/String;
    .locals 3
    .param p0, "opcode"    # I

    .line 369
    const/4 v0, 0x0

    .line 370
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->opcodeNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge p0, v2, :cond_0

    .line 371
    aget-object v0, v1, p0

    .line 373
    :cond_0
    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 167
    const/4 v0, 0x0

    .line 168
    .local v0, "i":I
    const/4 v1, 0x2

    .line 170
    .local v1, "flags":I
    array-length v2, p0

    .line 172
    .local v2, "nbArgs":I
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 174
    .local v5, "ok":Z
    :goto_0
    if-eqz v5, :cond_1

    aget-object v6, p0, v3

    const-string v7, "-debug"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 175
    const/4 v0, 0x1

    .line 176
    const/4 v1, 0x0

    .line 177
    const/4 v6, 0x2

    if-ge v2, v6, :cond_1

    .line 178
    const/4 v5, 0x0

    .line 181
    :cond_1
    if-eqz v5, :cond_6

    aget-object v6, p0, v0

    const-string v7, ".dex"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    goto/16 :goto_3

    .line 190
    :cond_2
    const/4 v6, 0x0

    sput-object v6, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->classesToVisit:[Ljava/lang/String;

    .line 191
    add-int/lit8 v6, v0, 0x1

    if-le v2, v6, :cond_3

    .line 192
    sub-int v6, v2, v0

    sub-int/2addr v6, v4

    .line 193
    .local v6, "nbClasses":I
    new-array v4, v6, [Ljava/lang/String;

    sput-object v4, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->classesToVisit:[Ljava/lang/String;

    .line 194
    const/4 v4, 0x0

    .line 195
    .local v4, "classIndex":I
    add-int/lit8 v7, v0, 0x1

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_3

    .line 196
    sget-object v8, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->classesToVisit:[Ljava/lang/String;

    add-int/lit8 v9, v4, 0x1

    .end local v4    # "classIndex":I
    .local v9, "classIndex":I
    aget-object v10, p0, v7

    aput-object v10, v8, v4

    .line 195
    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    .line 200
    .end local v6    # "nbClasses":I
    .end local v7    # "j":I
    .end local v9    # "classIndex":I
    :cond_3
    aget-object v4, p0, v0

    invoke-static {v4}, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->trimDexFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dexFileName:Ljava/lang/String;

    .line 203
    const/16 v4, 0x100

    new-array v6, v4, [Ljava/lang/String;

    sput-object v6, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->opcodeNames:[Ljava/lang/String;

    .line 205
    const-string v6, "org.ow2.asmdex.Opcodes"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    .line 206
    .local v6, "fields":[Ljava/lang/reflect/Field;
    array-length v7, v6

    :goto_2
    if-ge v3, v7, :cond_5

    aget-object v8, v6, v3

    .line 207
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    .line 208
    .local v9, "fieldName":Ljava/lang/String;
    const/16 v10, 0x19

    .line 209
    .local v10, "goodFlag":I
    const-string v11, "INSN_"

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 210
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v11

    if-ne v11, v10, :cond_4

    .line 211
    invoke-virtual {v8, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    .line 212
    .local v11, "opcode":I
    if-ge v11, v4, :cond_4

    .line 213
    sget-object v12, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->opcodeNames:[Ljava/lang/String;

    aput-object v9, v12, v11

    .line 206
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "fieldName":Ljava/lang/String;
    .end local v10    # "goodFlag":I
    .end local v11    # "opcode":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 219
    :cond_5
    new-instance v3, Lorg/ow2/asmdex/ApplicationReader;

    aget-object v4, p0, v0

    const/high16 v7, 0x40000

    invoke-direct {v3, v7, v4}, Lorg/ow2/asmdex/ApplicationReader;-><init>(ILjava/lang/String;)V

    .line 220
    .local v3, "ar":Lorg/ow2/asmdex/ApplicationReader;
    new-instance v4, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;

    new-instance v8, Ljava/io/PrintWriter;

    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v7, v8}, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;-><init>(ILjava/io/PrintWriter;)V

    sget-object v7, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->classesToVisit:[Ljava/lang/String;

    invoke-virtual {v3, v4, v7, v1}, Lorg/ow2/asmdex/ApplicationReader;->accept(Lorg/ow2/asmdex/ApplicationVisitor;[Ljava/lang/String;I)V

    .line 222
    return-void

    .line 182
    .end local v3    # "ar":Lorg/ow2/asmdex/ApplicationReader;
    .end local v6    # "fields":[Ljava/lang/reflect/Field;
    :cond_6
    :goto_3
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Prints the AsmDex code to generate the given class."

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v4, "Usage: ASMifierApplicationVisitor [-debug] <Dex file to open> [<fully qualified class names>]"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static setDexFileName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .line 249
    sput-object p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dexFileName:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public static trimDexFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "fullFileName"    # Ljava/lang/String;

    .line 230
    move-object v0, p0

    .line 231
    .local v0, "trimmedFileName":Ljava/lang/String;
    const-string v1, ".dex"

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 232
    .local v1, "n":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 233
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 235
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 236
    if-eq v1, v2, :cond_1

    .line 237
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_1
    return-object v0
.end method


# virtual methods
.method public getAcceptableMethodName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .line 384
    const-string v0, "Method"

    .line 386
    .local v0, "result":Ljava/lang/String;
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 388
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 389
    .local v1, "i":I
    if-ltz v1, :cond_0

    .line 390
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_0
    move-object v0, p1

    .line 395
    :goto_0
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 396
    if-lez v1, :cond_1

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 401
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dumpMethods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 405
    const/4 v1, 0x1

    .line 406
    .local v1, "stillFound":Z
    const/4 v2, 0x2

    .line 407
    .local v2, "i":I
    const/4 v3, 0x0

    .line 408
    .local v3, "newResult":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_2

    .line 409
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 410
    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dumpMethods:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 411
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 413
    :cond_2
    move-object v0, v3

    .line 416
    .end local v1    # "stillFound":Z
    .end local v2    # "i":I
    .end local v3    # "newResult":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dumpMethods:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    return-object v0
.end method

.method public visit()V
    .locals 6

    .line 260
    sget-object v0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dexFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 261
    .local v0, "firstLetter":C
    sget-object v1, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dexFileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sget-object v1, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dexFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    .line 262
    .local v1, "otherLetters":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 264
    .local v2, "camelName":Ljava/lang/String;
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 266
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 269
    :cond_1
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, "import java.util.*;\n"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->filenameOutput:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 271
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, "import java.io.*;\n"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 273
    :cond_2
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, "import org.ow2.asmdex.*;\n"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 274
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v4, "import org.ow2.asmdex.structureCommon.*;\n\n"

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 276
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "public class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Dump implements Opcodes {\n\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->filenameOutput:Ljava/lang/String;

    const-string v4, "}\n\n"

    if-eqz v3, :cond_3

    .line 279
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "public static void main(String[] args) throws Exception {\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\tbyte[] b = dump();\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\tFile outputFile;\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\tif (args.length == 1) {\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\t\toutputFile = new File(args[0]);\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 284
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\t\tFileOutputStream outputStream = new FileOutputStream(outputFile);\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 285
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\t\toutputStream.write(b);\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 286
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\t\toutputStream.close();\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 287
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\t}\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 288
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 291
    :cond_3
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "public static byte[] dump() throws Exception {\n\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 293
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\tApplicationWriter aw = new ApplicationWriter();\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 294
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\taw.visit();\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 295
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 296
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 299
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    iget-object v5, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->methodToCall:Lorg/ow2/asmdex/util/TextComposite;

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 300
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 302
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\taw.visitEnd();\n\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 303
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v5, "\treturn aw.toByteArray();\n"

    invoke-virtual {v3, v5}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 304
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3, v4}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 305
    iget-object v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 306
    return-void
.end method

.method public visitClass(ILjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/ow2/asmdex/ClassVisitor;
    .locals 4
    .param p1, "access"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "signature"    # [Ljava/lang/String;
    .param p4, "superName"    # Ljava/lang/String;
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 312
    invoke-virtual {p0, p2}, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->getAcceptableMethodName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "className":Ljava/lang/String;
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "public static void "

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 315
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1, v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "(ApplicationWriter aw) {\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "\tClassVisitor cv;\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 319
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "\tFieldVisitor fv;\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 320
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "\tMethodVisitor mv;\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "\tAnnotationVisitor av0;\n\n"

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v2, "\tcv = aw.visitClass("

    invoke-virtual {v1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 324
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addAccessFlags(IZ)V

    .line 325
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1, p2, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 326
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1, p3, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 327
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1, p4, v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 328
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const/4 v3, 0x0

    invoke-virtual {v1, p5, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addConstant(Ljava/lang/Object;Z)V

    .line 329
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, ");"

    invoke-virtual {v1, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 330
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addEOL()V

    .line 331
    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 333
    new-instance v1, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;

    iget v3, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->api:I

    invoke-direct {v1, v3, v2}, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;-><init>(II)V

    .line 334
    .local v1, "cv":Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v1}, Lorg/ow2/asmdex/util/AsmDexifierClassVisitor;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addTextToList(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 336
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v3, "}\n\n"

    invoke-virtual {v2, v3}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 337
    iget-object v2, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v2}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 338
    return-object v1
.end method

.method public visitEnd()V
    .locals 5

    .line 343
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    const-string v1, "}\n\n"

    invoke-virtual {v0, v1}, Lorg/ow2/asmdex/util/AsmDexPrinter;->addText(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->closeText()V

    .line 346
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->dumpMethods:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 347
    .local v1, "methodName":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 348
    .local v2, "sb":Ljava/lang/StringBuffer;
    const-string v3, "(aw);\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    new-instance v3, Lorg/ow2/asmdex/util/TextLeaf;

    invoke-direct {v3, v2}, Lorg/ow2/asmdex/util/TextLeaf;-><init>(Ljava/lang/StringBuffer;)V

    .line 350
    .local v3, "leaf":Lorg/ow2/asmdex/util/TextLeaf;
    iget-object v4, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->methodToCall:Lorg/ow2/asmdex/util/TextComposite;

    invoke-virtual {v4, v3}, Lorg/ow2/asmdex/util/TextComposite;->addComponent(Lorg/ow2/asmdex/util/TextComponent;)V

    .line 351
    .end local v1    # "methodName":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    .end local v3    # "leaf":Lorg/ow2/asmdex/util/TextLeaf;
    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pr:Lorg/ow2/asmdex/util/AsmDexPrinter;

    invoke-virtual {v0}, Lorg/ow2/asmdex/util/AsmDexPrinter;->getTextComponent()Lorg/ow2/asmdex/util/TextComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pw:Ljava/io/PrintWriter;

    invoke-interface {v0, v1}, Lorg/ow2/asmdex/util/TextComponent;->print(Ljava/io/PrintWriter;)V

    .line 355
    iget-object v0, p0, Lorg/ow2/asmdex/util/AsmDexifierApplicationVisitor;->pw:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 356
    return-void
.end method
