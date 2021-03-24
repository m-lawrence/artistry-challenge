class ArtistInstrumentsController < ApplicationController

    def index
        @artist_instruments = ArtistInstrument.all
    end

    def new
        @artist_instrument = ArtistInstrument.new
    end

    def create
        @artist_instrument = ArtistInstrument.create(artist_instrument_params)
        @artist = @artist_instrument.artist
        redirect_to artist_url(@artist)
    end

    private

    def artist_instrument_params
        params.require(:artist_instrument).permit(:artist_id, :instrument_id)
    end

end
