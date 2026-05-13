class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2930.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2930.0/lightdash-cli-0.2930.0-macos-arm64.tar.gz"
      sha256 "c02b971fb3134e580a50031087c6fc01234896dd0e6cb9e8720a1460f6a17da3"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2930.0/lightdash-cli-0.2930.0-macos-x64.tar.gz"
      sha256 "6e72572279c5123786a02b66a22edadde3636d43060905696d4d5ec1d32b9c29"
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
