class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3236.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3236.0/lightdash-cli-0.3236.0-macos-arm64.tar.gz"
      sha256 "be73d029bcaecc93b36d89fda86823f47afba4411ab92e0f2d0db4312d4c907c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3236.0/lightdash-cli-0.3236.0-macos-x64.tar.gz"
      sha256 "a8a389cf5f18b905c1b271495b866333fc65cc3e2236601cff2713d4ba119a39"
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
