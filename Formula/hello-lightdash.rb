class HelloLightdash < Formula
  desc "Testing binary for Lightdash"
  homepage "https://github.com/lightdash/hello-lightdash-binary-example"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lightdash/hello-lightdash-binary-example/releases/download/v1.0.1/hello-lightdash-v1.0.1-macos-arm64.tar.gz"
      sha256 "dcbead49b27d2c33ba68c6d07aabc696c9fbdd1c2f1bc08b7c754c7a3e0301b5"
    else
      url "https://github.com/lightdash/hello-lightdash-binary-example/releases/download/v1.0.1/hello-lightdash-v1.0.1-macos-x64.tar.gz"
      sha256 "b131e6dfc622c6f3c7ced5a6fa3e7d8d68fa027e38e81ceeb349b4c99b61c840"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "hello-lightdash-arm64" => "hello-lightdash"
    else
      bin.install "hello-lightdash-x64" => "hello-lightdash"
    end
  end

  test do
    system "#{bin}/hello-lightdash"
  end
end
