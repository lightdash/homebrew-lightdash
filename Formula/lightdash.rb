class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2550.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2550.1/lightdash-cli-0.2550.1-macos-arm64.tar.gz"
      sha256 "306ce6d4a5d4300962c6a5eb31e1b4c215a13341b939b844b1def5c1c6de5942"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2550.1/lightdash-cli-0.2550.1-macos-x64.tar.gz"
      sha256 "af2e658718c9e6cfcb950761da55709226e7d116d1774eb4261d1da54c644566"
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
