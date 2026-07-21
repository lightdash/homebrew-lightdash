class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3436.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3436.2/lightdash-cli-0.3436.2-macos-arm64.tar.gz"
      sha256 "b0b992d36734aba5770d14993e3063c7c69d999dba65b640978238ce5bdf9b0b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3436.2/lightdash-cli-0.3436.2-macos-x64.tar.gz"
      sha256 "a9e7413403b6094025ea837c57c9f099cc13294f8a0b352feb4c6c12d098065a"
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
