class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2278.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.3/lightdash-cli-0.2278.3-macos-arm64.tar.gz"
      sha256 "f580f988802ee90fb5cc3008b8569668af3793b5fa437349e9227eaf840dabe6"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2278.3/lightdash-cli-0.2278.3-macos-x64.tar.gz"
      sha256 "970eac0b4150b41040161cef238e6b2390597a0e71b83d630eec75a73bbfe3cc"
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
