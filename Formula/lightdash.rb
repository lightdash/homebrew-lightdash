class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2772.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.2/lightdash-cli-0.2772.2-macos-arm64.tar.gz"
      sha256 "9a3a154b6db2ae3f673cfdcc19e292452e0c360642d6f3a8af06cd800dd6543b"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2772.2/lightdash-cli-0.2772.2-macos-x64.tar.gz"
      sha256 "c3402617d849e1ef7f4894c7e815cc8d20bb97a2bd4c08d1f1e11fdb3a042dcc"
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
