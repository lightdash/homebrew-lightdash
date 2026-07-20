class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3425.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3425.0/lightdash-cli-0.3425.0-macos-arm64.tar.gz"
      sha256 "6d5f42f361cd740ad8474da0619734575f0fdcf30d9309ceb92452fce47e889a"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3425.0/lightdash-cli-0.3425.0-macos-x64.tar.gz"
      sha256 "1d003164ede5a0c989203973676f8009f64a2e5a8932d394220bc8f96d08bb13"
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
