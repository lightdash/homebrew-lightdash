class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3296.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3296.0/lightdash-cli-0.3296.0-macos-arm64.tar.gz"
      sha256 "c9f74697a1e97ec1f76045c074382521f44eae528339eaadb50e141a7051517f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3296.0/lightdash-cli-0.3296.0-macos-x64.tar.gz"
      sha256 "c0b50e165077b4f2bd466b0003ca5749d5ac905aacf1118d723d20baccff600c"
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
