class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2447.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2447.1/lightdash-cli-0.2447.1-macos-arm64.tar.gz"
      sha256 "edbc37c71899d6883df6f4e55814f32decc6916a4482035eb7d5ec29e4786360"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2447.1/lightdash-cli-0.2447.1-macos-x64.tar.gz"
      sha256 "dad5eb6f008ceae2c3bc7e1c1c5ad09f9ac1c74f271f530d8a87f11e9e9da994"
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
