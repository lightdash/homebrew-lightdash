class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2648.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.3/lightdash-cli-0.2648.3-macos-arm64.tar.gz"
      sha256 "16bc2fc68eb1fd561e05f7bfaba77bc2a89cb6e348737e31a81f714e33e8ea17"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2648.3/lightdash-cli-0.2648.3-macos-x64.tar.gz"
      sha256 "7a10ca91c3a1ce9253ceafa0266a933cda477d4df5f04bab2f29b5d1b59603b9"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lightdash-macos-arm64" => "lightdash"
    else
      bin.install "lightdash-macos-x64" => "lightdash"
    end
  end

  test do
    system bin/"lightdash", "--version"
  end
end
