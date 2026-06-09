class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3118.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3118.1/lightdash-cli-0.3118.1-macos-arm64.tar.gz"
      sha256 "ae3a68a4d30064e2a091ee8da6169ddb602ca8fb3718bf96f9834d2b787da329"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3118.1/lightdash-cli-0.3118.1-macos-x64.tar.gz"
      sha256 "ca7306fdb280436bbfbd6cbed43b7fd9fcc7e962460fcab80ecb1fa7a4fbc36c"
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
