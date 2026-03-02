class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2545.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.3/lightdash-cli-0.2545.3-macos-arm64.tar.gz"
      sha256 "f8bc99614d74490440b7e0ab956af0f63a62711bce7abfa8381eeca00db97663"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2545.3/lightdash-cli-0.2545.3-macos-x64.tar.gz"
      sha256 "1ef859f798d58a78183b13f6908466899dd510ecd7adf5257383baa7cf24432a"
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
