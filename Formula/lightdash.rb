class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.606.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.8/lightdash-cli-2.606.8-macos-arm64.tar.gz"
      sha256 "14095eb5dd60db04d029110adca2bc196eb719f677f23a3f714a81babd419f90"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.606.8/lightdash-cli-2.606.8-macos-x64.tar.gz"
      sha256 "ffd3a108eac732c9347f7cadf2f801ec6b383bffae0963f17fce3e09f258eb50"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.606.8/lightdash-cli-2.606.8-linux-x64.tar.gz"
    sha256 "3ca2bb6c3063b9d26bf079891385f30b2e1a41b209cc5180c35f73238c222d1c"

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
