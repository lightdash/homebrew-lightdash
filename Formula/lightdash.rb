class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2537.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2537.0/lightdash-cli-0.2537.0-macos-arm64.tar.gz"
      sha256 "431913a7318f3da93cf9ea6a299f8f42a3d2d34ec84d7f02468d70b840579185"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2537.0/lightdash-cli-0.2537.0-macos-x64.tar.gz"
      sha256 "4e94681eea7d5552e625fb7c7da1140fb7fe9c81f118a6f7541c9e0632557cd4"
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
