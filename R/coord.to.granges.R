# Function to import a bedfile/gfffile and put the information into a GRange

.bed.to.GRanges <- function(bedfile, ...) {
    # create conexion to the file with TSS coordinates (in Bed format)
    con <- file(bedfile,open="r")
    grFromBed <- import(con, "BED", trackLine = FALSE)
    # close conexion to the file
    on.exit(close(con))
    # Coerce into a data frame
    grDF <- as.data.frame(grFromBed)
}

.gff.to.GRanges <- function(gffFile, ...) {
    # create conexion to the file with TSS coordinates (in GFF format)
    con <- file(gffFile,open="r")
    grFromGFF <- import(con, "GFF")
    # close conexion to the file
    on.exit(close(con))
    # Coerce into a data frame
    grDF <- as.data.frame(grFromGFF)
} 
