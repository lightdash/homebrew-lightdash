class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.3030.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.3030.0/lightdash-cli-0.3030.0-macos-arm64.tar.gz"
      sha256 "54d9d9ea7013eceb507bd353baaf3e8e9ccf8f253bb4f8e7fa1a8247854f4bdf"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.3030.0/lightdash-cli-0.3030.0-macos-x64.tar.gz"
      sha256 "97dce4e61d481618d7468106697bf0be711b1cc5edf15524e39c6e041078a43c"
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
