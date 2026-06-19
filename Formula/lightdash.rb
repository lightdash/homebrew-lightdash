class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3204.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3204.1/lightdash-cli-0.3204.1-macos-arm64.tar.gz"
      sha256 "7c1ed8f1aeaf7fb5961bdbe7be5915751684c869ecb5046086487d513a9ceb7d"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3204.1/lightdash-cli-0.3204.1-macos-x64.tar.gz"
      sha256 "101a768faf55b0c5b062d0a860ff41c33b6743cbf5a15b4693b893c7157fcd59"
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
