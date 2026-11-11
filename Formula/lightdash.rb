class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "3.210.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/3.210.1/lightdash-cli-3.210.1-macos-arm64.tar.gz"
      sha256 "58813f9580f27e677264da73df3d87ae68b0138951182f0b15df48b7887186f1"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/3.210.1/lightdash-cli-3.210.1-macos-x64.tar.gz"
      sha256 "be71a4dd54c2246e5d0e68919945cc9734362e94dcb792eae6d55015264f58a8"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/3.210.1/lightdash-cli-3.210.1-linux-x64.tar.gz"
    sha256 "545b570b5b2ad7dd89927c3b6d6567e4761501b6435f005c170698cc85822008"

    depends_on arch: :x86_64
  end

  def install
    binary = Dir["lightdash-*"].first
    odie "No lightdash binary found in archive" if binary.nil?
    bin.install binary => "lightdash"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lightdash --version")
  end
end
