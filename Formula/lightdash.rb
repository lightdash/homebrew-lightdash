class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.212.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.1/lightdash-cli-1.212.1-macos-arm64.tar.gz"
      sha256 "db81ee511ba210394b4026e9308b0873b748fd5ca178004eed64e894f03a1a00"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.212.1/lightdash-cli-1.212.1-macos-x64.tar.gz"
      sha256 "9fd9bd38b8f733aec70b8eba403ce01aafe705beb885b29c93382056fdfff121"
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
