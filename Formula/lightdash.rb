class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "0.2228.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/0.2228.1/lightdash-cli-0.2228.1-macos-arm64.tar.gz"
      sha256 "a1cd491f9257ea62ed27a85fd6ca63238a2ddaaf0fc5a0882f2f806dfb653e94"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/0.2228.1/lightdash-cli-0.2228.1-macos-x64.tar.gz"
      sha256 "be68a9d92e47f368b95416c7c6a587dbc2d60eecda81c682883bceb4765543a3"
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
