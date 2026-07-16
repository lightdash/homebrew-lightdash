class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3401.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3401.0/lightdash-cli-0.3401.0-macos-arm64.tar.gz"
      sha256 "5551a122abc216f9d70d8fb7a01dec6751057897d8a9833e5c70e32f11660d1f"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3401.0/lightdash-cli-0.3401.0-macos-x64.tar.gz"
      sha256 "913d5d98a28588362b14ea293f2f25ed72a0991b2ad40038e345c5ddbade636d"
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
