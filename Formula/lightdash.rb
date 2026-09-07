class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.138.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.138.0/lightdash-cli-2.138.0-macos-arm64.tar.gz"
      sha256 "423cdce8021c6a538fc6f2d0a26ca565ed2fd83e11ec071536c87f346d1b45f5"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.138.0/lightdash-cli-2.138.0-macos-x64.tar.gz"
      sha256 "5d9767a2e9f1c8afafebf1dc52a00c95ba3afbf29e83ceb7db081325d1885969"
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
