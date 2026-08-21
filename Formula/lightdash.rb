class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "1.235.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.3/lightdash-cli-1.235.3-macos-arm64.tar.gz"
      sha256 "e811c52c73756d95cf43eff70ab073d8cd8c453412721c2898a173ef498ceae4"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/1.235.3/lightdash-cli-1.235.3-macos-x64.tar.gz"
      sha256 "7358d47caccf3b784084b81e5a89928575f81bc438c515e9e78e1d4d7b51d04e"
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
