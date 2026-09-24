class Lightdash < Formula
  desc "CLI for the Lightdash BI platform"
  homepage "https://github.com/lightdash/lightdash"
  version "2.329.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/lightdash/lightdash/releases/download/2.329.0/lightdash-cli-2.329.0-macos-arm64.tar.gz"
      sha256 "573264c9679db74ffdeb5490d1ceda367edd5b3ead6d0ccbaa52f2c889bad52c"
    end
    on_intel do
      url "https://github.com/lightdash/lightdash/releases/download/2.329.0/lightdash-cli-2.329.0-macos-x64.tar.gz"
      sha256 "c7895fe16f5b97b74f1ae401e29ac44959632f9db2ff3194a05dbbc5dc42e8f1"
    end
  end

  on_linux do
    url "https://github.com/lightdash/lightdash/releases/download/2.329.0/lightdash-cli-2.329.0-linux-x64.tar.gz"
    sha256 "a6468963c076604176628d18acf79d8892c874462d779331b17c1ea75de6edd8"

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
